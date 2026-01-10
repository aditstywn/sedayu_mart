import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:smart_agro/core/extensions/build_context_ext.dart';
import 'package:smart_agro/feature/cart/presentation/pages/checkout_page.dart';
import 'package:provider/provider.dart';
import '../../../../core/config/url.dart';
import '../../../../core/style/color/colors_app.dart';
import '../../../../core/style/thypograpy/sedayu_text_style.dart';
import '../provider/cart_provider.dart';

class CartPageCopy extends StatelessWidget {
  const CartPageCopy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Keranjang'),
        actions: [
          IconButton(
            icon: const Icon(Icons.delete, color: ColorsApp.error),
            onPressed: () {
              final cartProvider = Provider.of<CartProvider>(
                context,
                listen: false,
              );
              cartProvider.clear();
            },
          ),
        ],
      ),
      body: Consumer<CartProvider>(
        builder: (context, cartProvider, child) {
          if (cartProvider.items.isEmpty) {
            return _buildEmptyCart();
          }

          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: cartProvider.items.length,
                  itemBuilder: (context, index) {
                    final cartItem = cartProvider.items[index];
                    return _buildCartItem(context, cartItem, cartProvider);
                  },
                ),
              ),
              _buildSummary(context, cartProvider),
            ],
          );
        },
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

  Widget _buildCartItem(
    BuildContext context,
    CartItem item,
    CartProvider cartProvider,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
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
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                // Product Image
                Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    color: ColorsApp.primary.withAlpha(20),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: item.product.image != null
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: CachedNetworkImage(
                            imageUrl: '${Url.baseUrl}/${item.product.image}',
                            fit: BoxFit.cover,
                            placeholder: (context, url) => const Icon(
                              Icons.image,
                              color: ColorsApp.primary,
                              size: 26,
                            ),
                            errorWidget: (context, url, error) => const Icon(
                              Icons.eco,
                              color: ColorsApp.primary,
                              size: 26,
                            ),
                          ),
                        )
                      : const Icon(
                          Icons.eco,
                          color: ColorsApp.primary,
                          size: 26,
                        ),
                ),
                const SizedBox(width: 10),

                // Product Info
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.product.name ?? 'Produk',
                        style: SedayuTextStyles.bodyLargeBold.copyWith(
                          color: ColorsApp.textPrimary,
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                        ),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        'Rp ${(item.product.price ?? 0).toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]}.')} / ${item.product.unit ?? '-'}',
                        style: SedayuTextStyles.bodyLargeMedium.copyWith(
                          color: ColorsApp.textSecondary,
                          fontSize: 11,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        'Rp ${item.subtotal.toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]}.')}',
                        style: SedayuTextStyles.bodyLargeBold.copyWith(
                          color: ColorsApp.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),

                // Delete Button
                IconButton(
                  icon: const Icon(
                    Icons.delete_outline,
                    color: Colors.red,
                    size: 20,
                  ),
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  onPressed: () {
                    _showDeleteDialog(
                      context,
                      item.product.productId ?? 0,
                      cartProvider,
                    );
                  },
                ),
              ],
            ),
          ),

          // Quantity Controls
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            decoration: BoxDecoration(
              color: ColorsApp.lightGreen.withAlpha(20),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Jumlah:',
                  style: SedayuTextStyles.bodyLargeMedium.copyWith(
                    color: ColorsApp.textSecondary,
                    fontSize: 11,
                  ),
                ),
                const SizedBox(width: 10),
                // Minus Button
                InkWell(
                  onTap: () {
                    if (item.quantity > 1) {
                      cartProvider.updateQuantity(
                        item.product.productId ?? 0,
                        item.quantity - 1,
                      );
                    }
                  },
                  borderRadius: BorderRadius.circular(5),
                  child: Container(
                    width: 28,
                    height: 28,
                    decoration: BoxDecoration(
                      color: ColorsApp.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: ColorsApp.primary.withAlpha(77),
                      ),
                    ),
                    child: const Icon(
                      Icons.remove,
                      size: 16,
                      color: ColorsApp.primary,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                // Quantity
                Container(
                  width: 40,
                  alignment: Alignment.center,
                  child: Text(
                    item.quantity.toString(),
                    style: SedayuTextStyles.bodyLargeBold.copyWith(
                      color: ColorsApp.textPrimary,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                // Plus Button
                InkWell(
                  onTap: () {
                    cartProvider.updateQuantity(
                      item.product.productId ?? 0,
                      item.quantity + 1,
                    );
                  },
                  borderRadius: BorderRadius.circular(5),
                  child: Container(
                    width: 28,
                    height: 28,
                    decoration: BoxDecoration(
                      color: ColorsApp.primary,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Icon(
                      Icons.add,
                      size: 16,
                      color: ColorsApp.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSummary(BuildContext context, CartProvider cartProvider) {
    final totalItems = cartProvider.items.fold(
      0,
      (sum, item) => sum + item.quantity,
    );

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
                      'Rp ${cartProvider.total.toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]}.')}',
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
            child: ElevatedButton(
              onPressed: () {
                // Convert CartItems to Map format expected by CheckoutPage
                final cartItemsMap = cartProvider.items
                    .map(
                      (item) => {
                        'id': item.product.id,
                        'name': item.product.name,
                        'price': item.product.price,
                        'quantity': item.quantity,
                        'unit': item.product.unit,
                        'image': item.product.image,
                      },
                    )
                    .toList();

                context.push(CheckoutPage());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorsApp.primary,
                foregroundColor: ColorsApp.white,
                padding: const EdgeInsets.symmetric(vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.shopping_bag, size: 16),
                  const SizedBox(width: 8),
                  Text(
                    'Checkout',
                    style: SedayuTextStyles.bodyLargeBold.copyWith(
                      color: ColorsApp.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showDeleteDialog(
    BuildContext context,
    int productId,
    CartProvider cartProvider,
  ) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: ColorsApp.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: Text(
          'Hapus Produk',
          style: SedayuTextStyles.headlineSmall.copyWith(
            color: ColorsApp.textPrimary,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        content: Text(
          'Apakah Anda yakin ingin menghapus produk ini dari keranjang?',
          style: SedayuTextStyles.bodyLargeMedium.copyWith(
            color: ColorsApp.textSecondary,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              'Batal',
              style: SedayuTextStyles.bodyLargeBold.copyWith(
                color: ColorsApp.textSecondary,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              cartProvider.removeItem(productId);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: ColorsApp.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              elevation: 0,
            ),
            child: Text(
              'Hapus',
              style: SedayuTextStyles.bodyLargeBold.copyWith(
                color: ColorsApp.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
