import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_agro/core/extensions/build_context_ext.dart';
import 'package:intl/intl.dart';

import '../../../../core/component/space.dart';
import '../../../../core/config/url.dart';
import '../../../../core/style/color/colors_app.dart';
import '../../../../core/style/thypograpy/sedayu_text_style.dart';
import '../../../cart/presentation/bloc/notif_cart/notif_cart_bloc.dart';
import '../../data/models/request/add_cart_request_model.dart';
import '../../data/models/response/product_response_model.dart';
import '../bloc/submit_product/submit_product_bloc.dart';
import '../pages/product_detail_page.dart';

class ProductCard extends StatefulWidget {
  final Produk product;

  const ProductCard({super.key, required this.product});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  final formatter = NumberFormat.currency(
    locale: 'id_ID',
    symbol: 'Rp ',
    decimalDigits: 0,
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(ProductDetailPage(idProduct: widget.product.id));
      },
      child: Container(
        decoration: BoxDecoration(
          color: ColorsApp.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: ColorsApp.primary.withAlpha(77), width: 1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              child: CachedNetworkImage(
                imageUrl: '${Url.baseUrl}/${widget.product.gambarUtama ?? ''}',
                height: 120,
                width: double.infinity,
                fit: BoxFit.cover,
                placeholder: (context, url) => Container(
                  height: 120,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        ColorsApp.lightGreen.withAlpha(20),
                        ColorsApp.accentGreen.withAlpha(10),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Center(
                    child: CircularProgressIndicator(
                      color: ColorsApp.primary,
                      strokeWidth: 2,
                    ),
                  ),
                ),
                errorWidget: (context, url, error) => Container(
                  height: 120,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        ColorsApp.lightGreen.withAlpha(20),
                        ColorsApp.accentGreen.withAlpha(10),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.broken_image,
                      color: ColorsApp.grey,
                      size: 40,
                    ),
                  ),
                ),
              ),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.product.nama ?? '',
                          style: SedayuTextStyles.titleMedium.copyWith(
                            color: ColorsApp.textPrimary,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SpaceHeight(3),
                        Text(
                          'Stok: ${widget.product.stok ?? 0} ${widget.product.satuan ?? ''}',
                          style: SedayuTextStyles.bodyLargeRegular.copyWith(
                            color: ColorsApp.textSecondary,
                            fontSize: 10,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SpaceHeight(10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  color: ColorsApp.primary.withAlpha(20),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text(
                                  formatter.format(
                                    widget.product.varianDefault?.harga ?? 0,
                                  ),
                                  style: SedayuTextStyles.titleMedium.copyWith(
                                    color: ColorsApp.primary,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                            const SizedBox(width: 4),
                            BlocListener<SubmitProductBloc, SubmitProductState>(
                              listener: (context, state) {
                                switch (state) {
                                  case AddCartSuccess(:final message):
                                    context.showAlertSuccess(message: message);
                                    context.read<NotifCartBloc>().add(
                                      const NotifCartEvent.getItemCart(),
                                    );

                                  case ErrorSubmitProduct(:final message):
                                    context.showAlertError(message: message);
                                  case _:
                                }
                              },
                              child: GestureDetector(
                                onTap: () {
                                  final item = AddCartRequestModel(
                                    produkId: widget.product.id,
                                    varianId: widget.product.varianDefault?.id,
                                    kuantitas: 1,
                                  );
                                  context.read<SubmitProductBloc>().add(
                                    SubmitProductEvent.addCart(item),
                                  );
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(6),
                                  decoration: BoxDecoration(
                                    color: ColorsApp.primary.withAlpha(20),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Icon(
                                    Icons.shopping_cart,
                                    color: ColorsApp.primary,
                                    size: 18,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
