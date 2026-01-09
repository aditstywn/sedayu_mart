import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/extensions/build_context_ext.dart';
import '../../../cart/data/models/request/buy_now_request_model.dart';
import '../../../cart/presentation/bloc/notif_cart/notif_cart_bloc.dart';
import '../../../cart/presentation/pages/checkout_page.dart';
import '../bloc/submit_product/submit_product_bloc.dart';

import '../../../../core/component/buttons.dart';
import '../../../../core/component/space.dart';
import '../../../../core/config/url.dart';
import '../../../../core/style/color/colors_app.dart';
import '../../../../core/style/thypograpy/sedayu_text_style.dart';
import '../../data/models/request/add_cart_request_model.dart';
import '../../data/models/response/detail_product_response_model.dart';

class ModalProduct {
  static void showVariantSelectionModal(
    BuildContext context, {
    bool? buyNow,
    int? productId,
    List<Varian>? variants,
  }) {
    Varian? selectedVariant = variants?.isNotEmpty == true
        ? variants!.first
        : null;

    int quantity = 1;

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => StatefulBuilder(
        builder: (context, setStateModal) {
          void updateQuantity(int delta) {
            setStateModal(() {
              final newQuantity = quantity + delta;
              if (newQuantity > 0 &&
                  newQuantity <= (selectedVariant?.stok ?? 100)) {
                quantity = newQuantity;
              }
            });
          }

          return Container(
            decoration: const BoxDecoration(
              color: ColorsApp.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Handle bar
                  Center(
                    child: Container(
                      margin: const EdgeInsets.only(top: 12),
                      width: 40,
                      height: 4,
                      decoration: BoxDecoration(
                        color: ColorsApp.borderColor,
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Title
                  Row(
                    children: [
                      Text(
                        'Pilih Varian Produk',
                        style: SedayuTextStyles.headlineSmall.copyWith(
                          color: ColorsApp.textPrimary,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ],
                  ),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          color: ColorsApp.backgroundColor,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withAlpha(10),
                              blurRadius: 8,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: selectedVariant?.gambar != null
                            ? ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: CachedNetworkImage(
                                  imageUrl:
                                      '${Url.baseUrl}/${selectedVariant?.gambar}',
                                  fit: BoxFit.cover,
                                  placeholder: (context, url) => Center(
                                    child: CircularProgressIndicator(
                                      color: ColorsApp.primary,
                                      strokeWidth: 2,
                                    ),
                                  ),
                                  errorWidget: (context, url, error) => Icon(
                                    Icons.image_not_supported,
                                    color: ColorsApp.primary.withAlpha(128),
                                    size: 40,
                                  ),
                                ),
                              )
                            : Icon(
                                Icons.image_not_supported,
                                color: ColorsApp.primary.withAlpha(128),
                                size: 40,
                              ),
                      ),
                      SpaceWidth(12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              selectedVariant?.nama ?? '-',
                              style: SedayuTextStyles.bodyLargeBold.copyWith(
                                color: ColorsApp.textPrimary,
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              'Rp ${(selectedVariant?.harga ?? 0).toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]}.')}',
                              style: SedayuTextStyles.bodyLargeMedium.copyWith(
                                color: ColorsApp.primary,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'Stok: ${selectedVariant?.stok ?? 0} ${selectedVariant?.satuan ?? ''}',
                              style: SedayuTextStyles.bodyLargeMedium.copyWith(
                                color: ColorsApp.textSecondary,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  Divider(color: ColorsApp.borderColor.withAlpha(51)),
                  SpaceHeight(8),

                  Wrap(
                    children: [
                      ...?variants?.map(
                        (variant) => GestureDetector(
                          onTap: () {
                            setStateModal(() {
                              selectedVariant = variant;
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.all(6),
                            margin: const EdgeInsets.only(right: 8, bottom: 8),
                            decoration: BoxDecoration(
                              color: selectedVariant?.id == variant.id
                                  ? ColorsApp.primary.withAlpha(26)
                                  : ColorsApp.white,
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(
                                color: selectedVariant?.id == variant.id
                                    ? ColorsApp.primary
                                    : ColorsApp.borderColor,
                                width: selectedVariant?.id == variant.id
                                    ? 2
                                    : 1,
                              ),
                            ),
                            child: Text(
                              variant.nama ?? '-',
                              style: SedayuTextStyles.bodyLargeMedium.copyWith(
                                color: selectedVariant?.id == variant.id
                                    ? ColorsApp.primary
                                    : ColorsApp.textPrimary,
                                fontSize: 13,
                                fontWeight: selectedVariant?.id == variant.id
                                    ? FontWeight.w600
                                    : FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  Divider(color: ColorsApp.borderColor.withAlpha(51)),
                  SpaceHeight(8),

                  Row(
                    children: [
                      Text(
                        'Jumlah',
                        style: SedayuTextStyles.bodyLargeMedium.copyWith(
                          color: ColorsApp.textSecondary,
                          fontSize: 13,
                        ),
                      ),
                      const Spacer(),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: ColorsApp.primary.withAlpha(77),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () => updateQuantity(-1),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(8),
                                bottomLeft: Radius.circular(8),
                              ),
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 8,
                                ),
                                child: const Icon(
                                  Icons.remove,
                                  size: 18,
                                  color: ColorsApp.primary,
                                ),
                              ),
                            ),
                            Container(
                              width: 40,
                              alignment: Alignment.center,
                              child: Text(
                                quantity.toString(),

                                style: SedayuTextStyles.bodyLargeBold.copyWith(
                                  color: ColorsApp.textPrimary,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () => updateQuantity(1),
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                              ),
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 8,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorsApp.primary,
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(7),
                                    bottomRight: Radius.circular(7),
                                  ),
                                ),
                                child: const Icon(
                                  Icons.add,
                                  size: 18,
                                  color: ColorsApp.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SpaceHeight(16),
                  if (buyNow == true)
                    Button.filled(
                      onPressed: () {
                        context.push(
                          CheckoutPage(
                            buyNowRequest: BuyNowRequestModel(
                              produkId: productId,
                              varianId: selectedVariant?.id,
                              kuantitas: quantity,
                            ),
                          ),
                        );
                      },
                      label: 'Beli Sekarang',
                      color: ColorsApp.primary,
                      fontSize: 14,
                    )
                  else
                    BlocListener<SubmitProductBloc, SubmitProductState>(
                      listener: (context, state) {
                        switch (state) {
                          case AddCartSuccess(:final message):
                            context.showAlertSuccess(message: message);
                            context.read<NotifCartBloc>().add(
                              const NotifCartEvent.getItemCart(),
                            );
                            context.pop();

                          case ErrorSubmitProduct(:final message):
                            context.showAlertError(message: message);
                          case _:
                        }
                      },
                      child: Button.filled(
                        onPressed: () {
                          context.read<SubmitProductBloc>().add(
                            SubmitProductEvent.addCart(
                              AddCartRequestModel(
                                produkId: productId,
                                varianId: selectedVariant?.id,
                                kuantitas: quantity,
                              ),
                            ),
                          );
                        },
                        label: '+ Tambah Keranjang',
                        color: ColorsApp.primary,
                        fontSize: 14,
                      ),
                    ),
                  SpaceHeight(30),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
