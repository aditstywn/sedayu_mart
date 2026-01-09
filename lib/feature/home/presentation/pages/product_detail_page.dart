import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/component/space.dart';
import '../../../../core/config/url.dart';
import '../../../../core/extensions/build_context_ext.dart';
import '../../../../core/style/color/colors_app.dart';
import '../../../../core/style/thypograpy/sedayu_text_style.dart';
import '../../../cart/presentation/bloc/notif_cart/notif_cart_bloc.dart';
import '../../../cart/presentation/pages/cart_page.dart';
import '../../data/models/response/detail_product_response_model.dart';
import '../bloc/detail_product/detail_product_bloc.dart';
import '../widgets/modal_product.dart';

class ProductDetailPage extends StatefulWidget {
  final int? idProduct;

  const ProductDetailPage({super.key, this.idProduct});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  int _currentImageIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();

    context.read<DetailProductBloc>().add(
      DetailProductEvent.detailProduct(widget.idProduct ?? 0),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<DetailProductBloc, DetailProductState>(
        builder: (context, state) {
          switch (state) {
            case LoadingDetailProduct():
              return const Center(child: CircularProgressIndicator());
            case ErrorDetailProduct(:final message):
              return Center(
                child: Text(
                  message,
                  style: SedayuTextStyles.bodyLargeMedium.copyWith(
                    color: ColorsApp.error,
                    fontSize: 16,
                  ),
                ),
              );
            case DetailProductSuccess(:final detailProduct):
              final item = detailProduct.data?.produk;
              return Stack(
                children: [
                  CustomScrollView(
                    slivers: [
                      _buildAppBar(gambarProduk: item?.gambarProduks),
                      SliverToBoxAdapter(
                        child: _buildImageThumbnails(
                          gambarProduk: item?.gambarProduks,
                        ),
                      ),
                      SliverToBoxAdapter(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SpaceHeight(16),
                            Container(
                              width: double.infinity,
                              margin: const EdgeInsets.symmetric(
                                horizontal: 16,
                              ),
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: ColorsApp.white,
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withAlpha(10),
                                    blurRadius: 8,
                                    offset: const Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Varian Produk',
                                    style: SedayuTextStyles.bodyLargeBold
                                        .copyWith(
                                          color: ColorsApp.textPrimary,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                  ),
                                  const SizedBox(height: 12),
                                  Wrap(
                                    spacing: 6,
                                    runSpacing: 6,
                                    children: [
                                      ...item?.varians
                                              ?.map(
                                                (varian) => Container(
                                                  padding: const EdgeInsets.all(
                                                    8,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: ColorsApp
                                                        .backgroundColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          6,
                                                        ),
                                                    border: Border.all(
                                                      color:
                                                          ColorsApp.borderColor,
                                                      width: 1,
                                                    ),
                                                  ),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      SizedBox(
                                                        width: 20,
                                                        height: 20,

                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                6,
                                                              ),
                                                          child: CachedNetworkImage(
                                                            imageUrl:
                                                                varian.gambar !=
                                                                    null
                                                                ? '${Url.baseUrl}/${varian.gambar}'
                                                                : '',
                                                            fit: BoxFit.cover,
                                                            placeholder:
                                                                (
                                                                  context,
                                                                  url,
                                                                ) => Icon(
                                                                  Icons
                                                                      .inventory_2_outlined,
                                                                  color: ColorsApp
                                                                      .primary,
                                                                  size: 20,
                                                                ),
                                                            errorWidget:
                                                                (
                                                                  context,
                                                                  url,
                                                                  error,
                                                                ) => Icon(
                                                                  Icons
                                                                      .inventory_2_outlined,
                                                                  color: ColorsApp
                                                                      .primary,
                                                                  size: 20,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      SpaceWidth(6),
                                                      Text(
                                                        varian.nama ?? 'Varian',
                                                        style: SedayuTextStyles
                                                            .bodyLargeMedium
                                                            .copyWith(
                                                              color: ColorsApp
                                                                  .textPrimary,
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              )
                                              .toList() ??
                                          [],
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SpaceHeight(16),
                            Container(
                              margin: const EdgeInsets.symmetric(
                                horizontal: 16,
                              ),
                              decoration: BoxDecoration(
                                color: ColorsApp.white,
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withAlpha(10),
                                    blurRadius: 8,
                                    offset: const Offset(0, 2),
                                  ),
                                ],
                              ),
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    detailProduct.data?.produk?.nama ??
                                        'Nama Produk',
                                    style: SedayuTextStyles.headlineSmall
                                        .copyWith(
                                          color: ColorsApp.textPrimary,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                  ),
                                  Divider(
                                    color: ColorsApp.borderColor.withAlpha(51),
                                  ),

                                  Text(
                                    detailProduct.data?.produk?.deskripsi ??
                                        '-',
                                    style: SedayuTextStyles.bodyLargeMedium
                                        .copyWith(
                                          color: ColorsApp.textSecondary,
                                          fontSize: 13,
                                          height: 1.5,
                                        ),
                                    textAlign: TextAlign.justify,
                                  ),
                                ],
                              ),
                            ),

                            SpaceHeight(130),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: _buildBottomBar(
                      productId: item?.id,
                      variants: item?.varians,
                    ),
                  ),
                ],
              );
            case _:
              return const SizedBox();
          }
        },
      ),
    );
  }

  Widget _buildAppBar({List<GambarProduk?>? gambarProduk}) {
    return SliverAppBar(
      expandedHeight: 280,
      pinned: true,
      backgroundColor: ColorsApp.white,
      leading: Container(
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: ColorsApp.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(color: Colors.black.withAlpha(26), blurRadius: 8),
          ],
        ),
        child: IconButton(
          icon: const Icon(Icons.arrow_back, color: ColorsApp.textPrimary),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      actions: [
        Container(
          margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: ColorsApp.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(color: Colors.black.withAlpha(26), blurRadius: 8),
            ],
          ),
          child: InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            focusColor: Colors.transparent,
            onTap: () => context.push(CartPage()),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Icon(
                  Icons.shopping_cart_outlined,
                  color: ColorsApp.primary,
                  size: 28,
                ),
                BlocSelector<NotifCartBloc, NotifCartState, int>(
                  selector: (state) => state.maybeWhen(
                    getItemCartSuccess: (cart) => cart.data?.length ?? 0,
                    orElse: () => 0,
                  ),
                  builder: (context, length) {
                    if (length == 0) return const SizedBox();

                    return Positioned(
                      right: -3,
                      top: -8,
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                        constraints: const BoxConstraints(
                          minWidth: 18,
                          minHeight: 18,
                        ),
                        child: Text(
                          length > 99 ? '99+' : length.toString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          children: [
            PageView.builder(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentImageIndex = index;
                });
              },
              itemCount: gambarProduk?.length ?? 0,
              itemBuilder: (context, index) {
                return CachedNetworkImage(
                  imageUrl:
                      '${Url.baseUrl}/${gambarProduk?[index]?.gambar ?? ''}',
                  fit: BoxFit.cover,
                  placeholder: (context, url) => Container(
                    color: ColorsApp.lightGreen.withAlpha(38),
                    child: Center(
                      child: CircularProgressIndicator(
                        color: ColorsApp.primary,
                      ),
                    ),
                  ),
                  errorWidget: (context, url, error) => Container(
                    color: ColorsApp.lightGreen.withAlpha(38),
                    child: Center(
                      child: Icon(
                        Icons.image_not_supported,
                        size: 120,
                        color: ColorsApp.primary.withAlpha(128),
                      ),
                    ),
                  ),
                );
              },
            ),
            Positioned(
              bottom: 16,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  gambarProduk?.length ?? 0,
                  (index) => Container(
                    margin: const EdgeInsets.symmetric(horizontal: 3),
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentImageIndex == index
                          ? ColorsApp.primary
                          : ColorsApp.white.withAlpha(128),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImageThumbnails({List<GambarProduk>? gambarProduk}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      color: ColorsApp.white,
      child: Row(
        children: List.generate(
          gambarProduk?.length ?? 0,
          (index) => GestureDetector(
            onTap: () {
              _pageController.animateToPage(
                index,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            },
            child: Container(
              margin: const EdgeInsets.only(right: 10),
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: _currentImageIndex == index
                      ? ColorsApp.primary
                      : ColorsApp.borderColor,
                  width: _currentImageIndex == index ? 2 : 1,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: CachedNetworkImage(
                  imageUrl:
                      '${Url.baseUrl}/${gambarProduk?[index].gambar ?? ''}',
                  fit: BoxFit.cover,
                  placeholder: (context, url) => Container(
                    color: ColorsApp.lightGreen.withAlpha(38),
                    child: Center(
                      child: CircularProgressIndicator(
                        color: ColorsApp.primary,
                        strokeWidth: 2,
                      ),
                    ),
                  ),
                  errorWidget: (context, url, error) => Container(
                    color: ColorsApp.lightGreen.withAlpha(38),
                    child: Icon(
                      Icons.image_not_supported,
                      size: 24,
                      color: ColorsApp.primary.withAlpha(128),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBottomBar({int? productId, List<Varian>? variants}) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: ColorsApp.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(20),
            blurRadius: 12,
            offset: const Offset(0, -3),
          ),
        ],
      ),
      child: SafeArea(
        top: false,
        child: Row(
          children: [
            Expanded(
              child: OutlinedButton.icon(
                onPressed: () {
                  ModalProduct.showVariantSelectionModal(
                    context,
                    productId: productId,
                    variants: variants,
                  );
                },
                style: OutlinedButton.styleFrom(
                  foregroundColor: ColorsApp.primary,
                  side: const BorderSide(color: ColorsApp.primary, width: 1.5),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                icon: const Icon(Icons.shopping_cart_outlined, size: 20),
                label: Text(
                  'Keranjang',
                  style: SedayuTextStyles.bodyLargeBold.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  ModalProduct.showVariantSelectionModal(
                    context,
                    buyNow: true,
                    productId: productId,
                    variants: variants,
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorsApp.primary,
                  foregroundColor: ColorsApp.white,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  elevation: 0,
                ),
                child: Text(
                  'Beli Sekarang',
                  style: SedayuTextStyles.bodyLargeBold.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
