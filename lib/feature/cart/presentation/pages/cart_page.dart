import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sedayu_app/core/component/space.dart';
import 'package:flutter_sedayu_app/core/extensions/build_context_ext.dart';
import '../../../../core/component/buttons.dart';
import '../../../../core/config/url.dart';
import '../../../../core/style/color/colors_app.dart';
import '../../../../core/style/thypograpy/sedayu_text_style.dart';
import '../../data/models/request/buy_cart_request_model.dart';
import '../../data/models/request/update_cart_request_model.dart';
import '../../data/models/response/cart_response_model.dart';
import '../bloc/cart/cart_bloc.dart';
import '../bloc/notif_cart/notif_cart_bloc.dart';
import '../bloc/submit_cart/submit_cart_bloc.dart';
import '../widgets/cart_shimmer.dart';
import 'checkout_page.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  // Map untuk menyimpan state checkbox per cart item ID (varian)
  final Map<int, bool> _selectedItems = {};
  // List untuk menyimpan cart item ID yang dipilih
  final List<int> _selectedItemIds = [];
  // Map untuk menyimpan offset swipe per item (untuk swipe to reveal delete)
  final Map<int, double> _swipeOffsets = {};
  // Map untuk menyimpan quantity yang diubah user (key: cart item id)
  final Map<int, int> _updatedQuantities = {};
  // List untuk menyimpan ID item yang sudah dihapus (untuk hide dari UI)
  final List<int> _deletedItemIds = [];

  @override
  void initState() {
    super.initState();
    context.read<CartBloc>().add(const CartEvent.getCart());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Keranjang')),
      body: BlocListener<SubmitCartBloc, SubmitCartState>(
        listener: (context, state) {
          switch (state) {
            case ErrorSubmitCart(:final message):
              context.showAlertError(message: message);
              context.read<CartBloc>().add(const CartEvent.getCart());
            case DeleteCartSuccess(:final message):
              context.pop();
              context.read<NotifCartBloc>().add(
                const NotifCartEvent.getItemCart(),
              );
              context.showAlertSuccess(message: message);
            case _:
          }
        },
        child: BlocBuilder<CartBloc, CartState>(
          builder: (context, state) {
            switch (state) {
              case LoadingCart():
                return const CartShimmer();
              case CartError(:final message):
                return Center(
                  child: Text(
                    message,
                    style: SedayuTextStyles.bodyLargeMedium.copyWith(
                      color: ColorsApp.error,
                    ),
                  ),
                );
              case GetCartSuccess(:final cart):
                if (cart.data?.isEmpty == true) {
                  return _buildEmptyCart();
                } else if (_deletedItemIds.length == (cart.data?.length ?? 0)) {
                  return _buildEmptyCart();
                }

                // Group produk berdasarkan product ID
                final groupedProducts = <int, List<DataProduk>>{};
                for (var item in cart.data ?? []) {
                  // Skip item yang sudah dihapus
                  if (_deletedItemIds.contains(item.id)) {
                    continue;
                  }

                  final productId = item.produk?.id ?? 0;
                  if (!groupedProducts.containsKey(productId)) {
                    groupedProducts[productId] = [];
                  }
                  groupedProducts[productId]!.add(item);
                }

                return Column(
                  children: [
                    Expanded(
                      child: RefreshIndicator(
                        onRefresh: () async {
                          context.read<CartBloc>().add(
                            const CartEvent.getCart(),
                          );
                        },
                        child: ListView.builder(
                          padding: const EdgeInsets.all(16),
                          itemCount: groupedProducts.length,
                          itemBuilder: (context, index) {
                            final productId = groupedProducts.keys.elementAt(
                              index,
                            );
                            final items = groupedProducts[productId]!;
                            return _buildGroupedCartItem(
                              context,
                              productId: productId,
                              items: items,
                            );
                          },
                        ),
                      ),
                    ),
                    _buildSummary(context, cart),
                  ],
                );
              case _:
                return SizedBox();
            }
          },
        ),
      ),
    );
  }

  Widget _buildEmptyCart() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              color: ColorsApp.primary.withAlpha(26),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.shopping_cart_outlined,
              size: 60,
              color: ColorsApp.primary,
            ),
          ),
          const SizedBox(height: 24),
          Text(
            'Keranjang Kosong',
            style: SedayuTextStyles.headlineSmall.copyWith(
              color: ColorsApp.textPrimary,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Belum ada produk di keranjang',
            style: SedayuTextStyles.bodyLargeMedium.copyWith(
              color: ColorsApp.textSecondary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGroupedCartItem(
    BuildContext context, {
    required int productId,
    required List<DataProduk> items,
  }) {
    // Cek apakah semua varian dalam group ini sudah dipilih
    final allSelected = items.every((item) => _selectedItems[item.id] == true);

    // Hitung total dari group ini dengan quantity yang sudah diupdate
    final totalQuantity = items.fold<int>(
      0,
      (sum, item) => sum + (_updatedQuantities[item.id] ?? item.kuantitas ?? 0),
    );
    final totalPrice = items.fold<int>(
      0,
      (sum, item) => sum + _calculateSubtotal(item),
    );

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: ColorsApp.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: ColorsApp.primary.withAlpha(50), width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(10),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          // Header dengan checkbox
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: ColorsApp.primary.withAlpha(10),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
            child: Row(
              children: [
                // Checkbox untuk select all varian
                InkWell(
                  onTap: () {
                    setState(() {
                      // Toggle semua varian dalam group ini
                      for (var item in items) {
                        final itemId = item.id ?? 0;
                        _selectedItems[itemId] = !allSelected;

                        // Update list item IDs
                        if (!allSelected) {
                          // Jika select all, tambahkan item ID jika belum ada
                          if (!_selectedItemIds.contains(itemId)) {
                            _selectedItemIds.add(itemId);
                          }
                        } else {
                          // Jika unselect all, hapus item ID
                          _selectedItemIds.remove(itemId);
                        }
                      }

                      // Debug: Print list item IDs yang dipilih
                      print('Selected Item IDs: $_selectedItemIds');
                    });
                  },
                  borderRadius: BorderRadius.circular(6),
                  child: Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      color: allSelected ? ColorsApp.primary : ColorsApp.white,
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(
                        color: allSelected
                            ? ColorsApp.primary
                            : ColorsApp.primary.withAlpha(100),
                        width: 2,
                      ),
                    ),
                    child: allSelected
                        ? const Icon(
                            Icons.check,
                            color: ColorsApp.white,
                            size: 16,
                          )
                        : null,
                  ),
                ),
                const SizedBox(width: 12),

                // Product Info
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        items.first.produk?.nama ?? '-',
                        style: SedayuTextStyles.bodyLargeBold.copyWith(
                          color: ColorsApp.textPrimary,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        '${items.length} varian • $totalQuantity ${items.first.produk?.satuanProduk ?? 'item'}',
                        style: SedayuTextStyles.bodyLargeMedium.copyWith(
                          color: ColorsApp.textSecondary,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // List Varian
          ...items.map((item) => _buildVariantItem(context, item)),

          // Footer dengan total
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            decoration: BoxDecoration(
              color: ColorsApp.lightGreen.withAlpha(20),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: SedayuTextStyles.bodyLargeBold.copyWith(
                    color: ColorsApp.textPrimary,
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
                Text(
                  'Rp ${totalPrice.toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]}.')}',
                  style: SedayuTextStyles.bodyLargeBold.copyWith(
                    color: ColorsApp.primary,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildVariantItem(BuildContext context, DataProduk item) {
    final itemId = item.id ?? 0;
    final swipeOffset = _swipeOffsets[itemId] ?? 0.0;

    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: ColorsApp.primary.withAlpha(20), width: 1),
        ),
      ),
      child: Stack(
        children: [
          // Background dengan tombol hapus
          Positioned.fill(
            child: Container(
              color: Colors.red,
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: 20),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.delete_outline, color: Colors.white, size: 28),
                  SizedBox(height: 4),
                  Text(
                    'Hapus',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Item yang bisa di-swipe
          AnimatedContainer(
            duration: const Duration(milliseconds: 250),
            curve: Curves.easeOut,
            transform: Matrix4.translationValues(swipeOffset, 0, 0),
            child: GestureDetector(
              onHorizontalDragUpdate: (details) {
                setState(() {
                  final newOffset = swipeOffset + details.delta.dx;
                  // Batasi swipe hanya ke kiri (negatif) max -80
                  _swipeOffsets[itemId] = newOffset.clamp(-80.0, 0.0);
                });
              },
              onHorizontalDragEnd: (details) {
                setState(() {
                  // Jika di-swipe lebih dari 40px, snap ke -80 (terbuka)
                  // Jika kurang, snap kembali ke 0 (tertutup)
                  if (swipeOffset < -40) {
                    _swipeOffsets[itemId] = -80.0;
                  } else {
                    _swipeOffsets[itemId] = 0.0;
                  }
                });
              },
              onTap: () {
                // Tap untuk menutup jika sedang terbuka
                if (swipeOffset < 0) {
                  setState(() {
                    _swipeOffsets[itemId] = 0.0;
                  });
                }
              },
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
                child: Row(
                  children: [
                    // Checkbox untuk varian
                    InkWell(
                      onTap: () {
                        setState(() {
                          final itemId = item.id ?? 0;
                          final isSelected = !(_selectedItems[itemId] ?? false);

                          _selectedItems[itemId] = isSelected;

                          // Tambah atau hapus item ID dari list
                          if (isSelected) {
                            if (!_selectedItemIds.contains(itemId)) {
                              _selectedItemIds.add(itemId);
                            }
                          } else {
                            _selectedItemIds.remove(itemId);
                          }

                          // Debug: Print list item IDs yang dipilih
                          print('Selected Item IDs: $_selectedItemIds');
                        });
                      },
                      borderRadius: BorderRadius.circular(6),
                      child: Container(
                        width: 22,
                        height: 22,
                        decoration: BoxDecoration(
                          color: _selectedItems[item.id ?? 0] == true
                              ? ColorsApp.primary
                              : ColorsApp.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: _selectedItems[item.id ?? 0] == true
                                ? ColorsApp.primary
                                : ColorsApp.primary.withAlpha(100),
                            width: 2,
                          ),
                        ),
                        child: _selectedItems[item.id ?? 0] == true
                            ? const Icon(
                                Icons.check,
                                color: ColorsApp.white,
                                size: 14,
                              )
                            : null,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: ColorsApp.primary.withAlpha(20),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: CachedNetworkImage(
                          imageUrl:
                              '${Url.baseUrl}/${item.varian?.gambarUtama ?? ''}',
                          fit: BoxFit.cover,
                          placeholder: (context, url) => const Icon(
                            Icons.image,
                            color: ColorsApp.primary,
                            size: 26,
                          ),
                          errorWidget: (context, url, error) => const Icon(
                            Icons.image_not_supported,
                            color: ColorsApp.primary,
                            size: 26,
                          ),
                        ),
                      ),
                    ),
                    SpaceWidth(12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.varian?.namaVarian ?? '-',
                            style: SedayuTextStyles.bodyLargeBold.copyWith(
                              color: ColorsApp.textPrimary,
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            'Rp ${(item.varian?.harga ?? 0).toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]}.')} / ${item.produk?.satuanProduk ?? '-'}',
                            style: SedayuTextStyles.bodyLargeMedium.copyWith(
                              color: ColorsApp.textSecondary,
                              fontSize: 8,
                            ),
                          ),
                          SpaceHeight(4),
                          Text(
                            'Rp ${_calculateSubtotal(item).toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]}.')}',
                            style: SedayuTextStyles.bodyLargeMedium.copyWith(
                              color: ColorsApp.primary,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    // Quantity Controls
                    Row(
                      children: [
                        // Minus Button
                        InkWell(
                          onTap: () {
                            final currentQty =
                                _updatedQuantities[item.id] ??
                                item.kuantitas ??
                                0;
                            if (currentQty > 1) {
                              setState(() {
                                _updatedQuantities[item.id ?? 0] =
                                    currentQty - 1;
                              });
                              context.read<SubmitCartBloc>().add(
                                SubmitCartEvent.reduceStock(
                                  UpdateCartRequestModel(
                                    id: item.id ?? 0,
                                    count: 1,
                                  ),
                                ),
                              );
                            }
                          },
                          borderRadius: BorderRadius.circular(4),
                          child: Container(
                            width: 24,
                            height: 24,
                            decoration: BoxDecoration(
                              color: ColorsApp.white,
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                color: ColorsApp.primary.withAlpha(100),
                                width: 1,
                              ),
                            ),
                            child: const Icon(
                              Icons.remove,
                              size: 14,
                              color: ColorsApp.primary,
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        // Quantity Display
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: ColorsApp.primary.withAlpha(20),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Text(
                            '${_updatedQuantities[item.id] ?? item.kuantitas ?? 0}',
                            style: SedayuTextStyles.bodyLargeBold.copyWith(
                              color: ColorsApp.primary,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        const SizedBox(width: 8),
                        // Plus Button
                        InkWell(
                          onTap: () {
                            final currentQty =
                                _updatedQuantities[item.id] ??
                                item.kuantitas ??
                                0;
                            setState(() {
                              _updatedQuantities[item.id ?? 0] = currentQty + 1;
                            });
                            context.read<SubmitCartBloc>().add(
                              SubmitCartEvent.plusStock(
                                UpdateCartRequestModel(
                                  id: item.id ?? 0,
                                  count: 1,
                                ),
                              ),
                            );
                          },
                          borderRadius: BorderRadius.circular(4),
                          child: Container(
                            width: 24,
                            height: 24,
                            decoration: BoxDecoration(
                              color: ColorsApp.primary,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: const Icon(
                              Icons.add,
                              size: 14,
                              color: ColorsApp.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Tombol hapus yang muncul saat di-swipe
          if (swipeOffset < -40)
            Positioned(
              right: 0,
              top: 0,
              bottom: 0,
              child: GestureDetector(
                onTap: () {
                  _showDeleteDialog(context, item);
                },
                child: Container(width: 80, color: Colors.transparent),
              ),
            ),
        ],
      ),
    );
  }

  // Dialog konfirmasi hapus
  void _showDeleteDialog(BuildContext context, DataProduk item) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: ColorsApp.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          title: Text(
            'Hapus Item',
            style: SedayuTextStyles.headlineSmall.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          content: Text(
            'Apakah Anda yakin ingin menghapus "${item.varian?.namaVarian}" dari keranjang?',
            style: SedayuTextStyles.bodyLargeMedium,
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(
                'Batal',
                style: SedayuTextStyles.bodyLargeBold.copyWith(
                  color: ColorsApp.textSecondary,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<SubmitCartBloc>().add(
                  SubmitCartEvent.deleteCart(item.id ?? 0),
                );
                setState(() {
                  _deletedItemIds.add(item.id ?? 0);
                  _selectedItems.remove(item.id);
                  _selectedItemIds.remove(item.id);
                  _updatedQuantities.remove(item.id);
                  _swipeOffsets.remove(item.id);
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                elevation: 0,
              ),
              child: Text(
                'Hapus',
                style: SedayuTextStyles.bodyLargeBold.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  // Helper method untuk menghitung subtotal item
  int _calculateSubtotal(DataProduk item) {
    final qty = _updatedQuantities[item.id] ?? item.kuantitas ?? 0;
    return (item.varian?.harga ?? 0) * qty;
  }

  Widget _buildSummary(BuildContext context, CartResponseModel cart) {
    // Hitung total items dan harga dari varian yang dipilih
    int totalItems = 0;
    int totalPrice = 0;

    for (var item in cart.data ?? []) {
      // Skip item yang sudah dihapus
      if (_deletedItemIds.contains(item.id)) {
        continue;
      }

      if (_selectedItems[item.id] == true) {
        final int qty =
            (_updatedQuantities[item.id] ?? item.kuantitas ?? 0) as int;
        totalItems = totalItems + qty;
        totalPrice += _calculateSubtotal(item);
      }
    }

    final hasSelectedItems = _selectedItems.values.any((selected) => selected);

    return Container(
      margin: const EdgeInsets.only(left: 8, right: 8, bottom: 12),
      decoration: BoxDecoration(
        color: ColorsApp.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(10),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                // Total Items
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Item',
                      style: SedayuTextStyles.bodyLargeMedium.copyWith(
                        color: ColorsApp.textSecondary,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      '$totalItems item',
                      style: SedayuTextStyles.bodyLargeBold.copyWith(
                        color: ColorsApp.textPrimary,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 6),
                // Total
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: SedayuTextStyles.bodyLargeBold.copyWith(
                        color: ColorsApp.textPrimary,
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                    Text(
                      'Rp ${totalPrice.toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]}.')}',
                      style: SedayuTextStyles.headlineSmall.copyWith(
                        color: ColorsApp.primary,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Checkout Button
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Button.filled(
              onPressed: () {
                if (hasSelectedItems) {
                  final buyCartRequest = BuyCartRequestModel(
                    ids: hasSelectedItems ? _selectedItemIds : [],
                  );
                  context.push(
                    CheckoutPage(
                      isFromCart: true,
                      buyCartRequest: buyCartRequest,
                    ),
                  );
                }
              },
              label: 'Checkout',
              color: hasSelectedItems
                  ? ColorsApp.primary
                  : ColorsApp.primary.withAlpha(100),
              borderRadius: 8,
            ),
          ),
        ],
      ),
    );
  }
}
