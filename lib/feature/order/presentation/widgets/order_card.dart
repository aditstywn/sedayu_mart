import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:smart_agro/core/extensions/build_context_ext.dart';
import 'package:intl/intl.dart';

import '../../../../core/component/buttons.dart';
import '../../../../core/config/url.dart';
import '../../../../core/style/color/colors_app.dart';
import '../../../../core/style/thypograpy/sedayu_text_style.dart';
import '../../data/models/response/order_response_model.dart';
import '../pages/detail_order_page.dart';

class OrderCard extends StatefulWidget {
  final DataPesanan? order;
  const OrderCard({super.key, required this.order});

  @override
  State<OrderCard> createState() => _OrderCardState();
}

class _OrderCardState extends State<OrderCard> {
  Set<String> expandedOrders = {};
  @override
  Widget build(BuildContext context) {
    final orderNumber = widget.order?.nomorPesanan ?? '';
    final isExpanded = expandedOrders.contains(orderNumber);
    final products = widget.order?.itemPesanan ?? [];
    final hasMultipleProducts = products.length > 1;
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: ColorsApp.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: ColorsApp.primary.withAlpha(50), width: 1),
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
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  ColorsApp.primary.withAlpha(20),
                  ColorsApp.lightGreen.withAlpha(10),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              border: Border(
                bottom: BorderSide(
                  color: ColorsApp.primary.withAlpha(50),
                  width: 1,
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      orderNumber,
                      style: SedayuTextStyles.titleMedium.copyWith(
                        color: ColorsApp.textPrimary,
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      DateFormat('dd MMM yyyy, HH:mm').format(
                        widget.order?.pesananDibuatPada ?? DateTime.now(),
                      ),
                      style: SedayuTextStyles.bodyLargeRegular.copyWith(
                        color: ColorsApp.textSecondary,
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
                _buildStatusBadge(
                  widget.order?.status?.replaceAll(
                        'Menunggu Verifikasi',
                        'Menunggu',
                      ) ??
                      '',
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildProductItem(widget.order?.itemPesanan?[0].produk),

                if (hasMultipleProducts) ...[
                  if (isExpanded) ...[
                    ...products
                        .skip(1)
                        .map(
                          (product) => Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: _buildProductItem(product.produk),
                          ),
                        ),
                  ],
                  const SizedBox(height: 8),
                  InkWell(
                    onTap: () {
                      setState(() {
                        if (isExpanded) {
                          expandedOrders.remove(orderNumber);
                        } else {
                          expandedOrders.add(orderNumber);
                        }
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          isExpanded
                              ? 'Sembunyikan'
                              : 'Lihat ${products.length - 1} produk lainnya',
                          style: SedayuTextStyles.bodyLargeMedium.copyWith(
                            color: ColorsApp.grey,
                            fontWeight: FontWeight.w600,
                            fontSize: 8,
                          ),
                        ),
                        const SizedBox(width: 4),
                        Icon(
                          isExpanded
                              ? Icons.keyboard_arrow_up
                              : Icons.keyboard_arrow_down,
                          color: ColorsApp.grey,
                          size: 16,
                        ),
                      ],
                    ),
                  ),
                ],
              ],
            ),
          ),

          Container(
            width: double.infinity,
            height: 1,
            color: ColorsApp.primary.withAlpha(25),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Flexible(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total Pembayaran:',
                        style: SedayuTextStyles.bodyLargeRegular.copyWith(
                          color: ColorsApp.textSecondary,
                          fontSize: 11,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Rp ${(widget.order?.totalBayar as int).toStringAsFixed(0).replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]}.')}',
                        style: SedayuTextStyles.titleMedium.copyWith(
                          color: ColorsApp.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),

                Flexible(
                  flex: 2,
                  child: Button.outlined(
                    onPressed: () {
                      context.push(
                        DetailOrderPage(orderId: widget.order?.pesananId),
                      );
                    },
                    label: 'Lihat Detail',
                    height: 30,

                    fontSize: 10,
                    borderRadius: 10,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProductItem(Produk? product) {
    return Row(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: ColorsApp.lightGreen.withAlpha(20),
            borderRadius: BorderRadius.circular(8),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: CachedNetworkImage(
              imageUrl: '${Url.baseUrl}/${product?.gambarVarian}',
              fit: BoxFit.cover,
              placeholder: (context, url) => Center(
                child: CircularProgressIndicator(
                  color: ColorsApp.primary,
                  strokeWidth: 2,
                ),
              ),
              errorWidget: (context, url, error) => Icon(
                Icons.image_not_supported,
                color: ColorsApp.primary,
                size: 30,
              ),
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                product?.namaProduk ?? '',
                style: SedayuTextStyles.bodyLargeBold.copyWith(
                  color: ColorsApp.textPrimary,
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 4),
              Text(
                '${product?.kuantitas}x • Rp ${(product?.harga as int).toStringAsFixed(0).replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]}.')}',
                style: SedayuTextStyles.bodyLargeRegular.copyWith(
                  color: ColorsApp.textSecondary,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildStatusBadge(String status) {
    Color bgColor;
    Color textColor;

    switch (status) {
      case 'Dikirim':
        bgColor = const Color(0xFFE3F2FD);
        textColor = const Color(0xFF1976D2);
        break;
      case 'Diproses':
        bgColor = const Color(0xFFFFF3E0);
        textColor = const Color(0xFFF57C00);
        break;
      case 'Selesai':
        bgColor = const Color(0xFFE8F5E9);
        textColor = const Color(0xFF388E3C);
        break;
      case 'Dibatalkan':
        bgColor = const Color(0xFFFFEBEE);
        textColor = const Color(0xFFD32F2F);
        break;
      default:
        bgColor = ColorsApp.grey.withAlpha(100);
        textColor = ColorsApp.grey;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: textColor, width: 1),
      ),
      child: Text(
        status,
        style: SedayuTextStyles.bodyLargeMedium.copyWith(
          color: textColor,
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
      ),
    );
  }
}
