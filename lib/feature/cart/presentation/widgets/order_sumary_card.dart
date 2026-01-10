import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:smart_agro/core/component/space.dart';

import '../../../../core/config/url.dart';
import '../../../../core/style/color/colors_app.dart';
import '../../../../core/style/thypograpy/sedayu_text_style.dart';
import '../../data/models/response/buy_now_response_model.dart';

class OrderSumaryCard extends StatelessWidget {
  final BeliSekarang? beliSekarang;
  const OrderSumaryCard({super.key, this.beliSekarang});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Row(
            children: [
              const Icon(
                Icons.shopping_bag,
                color: ColorsApp.primary,
                size: 20,
              ),
              const SizedBox(width: 8),
              Text(
                'Ringkasan Pesanan',
                style: SedayuTextStyles.bodyLargeBold.copyWith(
                  color: ColorsApp.textPrimary,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          _buildProductItem(),
          const SizedBox(height: 12),
          Container(height: 1, color: ColorsApp.borderColor.withAlpha(51)),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Subtotal',
                style: SedayuTextStyles.bodyLargeBold.copyWith(
                  color: ColorsApp.textSecondary,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
              Text(
                'Rp ${beliSekarang?.subtotal.toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]}.')}',
                style: SedayuTextStyles.headlineSmall.copyWith(
                  color: ColorsApp.textPrimary,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          SpaceHeight(4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Ongkos Kirim',
                style: SedayuTextStyles.bodyLargeBold.copyWith(
                  color: ColorsApp.textSecondary,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
              Text(
                'Rp ${beliSekarang?.ongkir.toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]}.')}',
                style: SedayuTextStyles.headlineSmall.copyWith(
                  color: ColorsApp.textPrimary,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          SpaceHeight(8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total Pembayaran',
                style: SedayuTextStyles.bodyLargeBold.copyWith(
                  color: ColorsApp.textPrimary,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              Text(
                'Rp ${beliSekarang?.totalBayar.toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]}.')}',
                style: SedayuTextStyles.headlineSmall.copyWith(
                  color: ColorsApp.textPrimary,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildProductItem() {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: ColorsApp.lightGreen.withAlpha(20),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: ColorsApp.white,
              borderRadius: BorderRadius.circular(6),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CachedNetworkImage(
                imageUrl: '${Url.baseUrl}/${beliSekarang?.gambarVarian ?? ''}',
                fit: BoxFit.cover,
                placeholder: (context, url) =>
                    const Icon(Icons.image, color: ColorsApp.primary, size: 26),
                errorWidget: (context, url, error) => const Icon(
                  Icons.image_not_supported,
                  color: ColorsApp.primary,
                  size: 26,
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
                  '${beliSekarang?.namaProduk ?? '-'} (${beliSekarang?.namaVarian ?? '-'})',
                  style: SedayuTextStyles.bodyLargeBold.copyWith(
                    color: ColorsApp.textPrimary,
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  '${beliSekarang?.kuantitas ?? '-'} ${beliSekarang?.satuanProduk ?? '-'} × Rp ${beliSekarang?.harga.toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]}.')}',
                  style: SedayuTextStyles.bodyLargeMedium.copyWith(
                    color: ColorsApp.textSecondary,
                    fontSize: 11,
                  ),
                ),
                SpaceHeight(2),
                Text(
                  'Rp ${beliSekarang?.subtotal.toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]}.')}',
                  style: SedayuTextStyles.bodyLargeBold.copyWith(
                    color: ColorsApp.textPrimary,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
