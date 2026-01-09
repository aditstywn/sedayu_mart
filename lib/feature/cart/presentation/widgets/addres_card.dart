import 'package:flutter/material.dart';
import 'package:sedayu_mart/feature/cart/data/models/response/main_address_response_model.dart';

import '../../../../core/style/color/colors_app.dart';
import '../../../../core/style/thypograpy/sedayu_text_style.dart';

class AddressCard extends StatelessWidget {
  final AlamatUtama? alamatUtama;
  const AddressCard({super.key, this.alamatUtama});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
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
            'Alamat Pengiriman',
            style: SedayuTextStyles.bodyLargeBold.copyWith(
              color: ColorsApp.textPrimary,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          const SizedBox(height: 12),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: ColorsApp.backgroundColor,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: ColorsApp.primary.withAlpha(51)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  alamatUtama?.namaPenerima ?? '-',
                  style: SedayuTextStyles.bodyLargeBold.copyWith(
                    color: ColorsApp.textPrimary,
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  alamatUtama?.nomorTelepon ?? '-',
                  style: SedayuTextStyles.bodyLargeMedium.copyWith(
                    color: ColorsApp.textSecondary,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  alamatUtama?.alamat ?? '-',
                  style: SedayuTextStyles.bodyLargeMedium.copyWith(
                    color: ColorsApp.textPrimary,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  '${alamatUtama?.kabupaten ?? '-'}, ${alamatUtama?.provinsi ?? '-'}, ${alamatUtama?.kodePos ?? '-'}',
                  style: SedayuTextStyles.bodyLargeMedium.copyWith(
                    color: ColorsApp.textPrimary,
                    fontSize: 13,
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
