import 'package:flutter/material.dart';
import '../../../../core/extensions/build_context_ext.dart';
import '../../data/models/response/main_address_response_model.dart';
import '../../../profile/presentation/pages/address_page.dart';

import '../../../../core/style/color/colors_app.dart';
import '../../../../core/style/thypograpy/sedayu_text_style.dart';
import '../../data/models/request/buy_cart_request_model.dart';
import '../../data/models/request/buy_now_request_model.dart';

class AddressCard extends StatelessWidget {
  final AlamatUtama? alamatUtama;
  final bool? isFromCart;
  final BuyNowRequestModel? buyNowRequest;
  final BuyCartRequestModel? buyCartRequest;
  const AddressCard({
    super.key,
    this.alamatUtama,
    this.isFromCart,
    this.buyNowRequest,
    this.buyCartRequest,
  });

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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Alamat Pengiriman',
                style: SedayuTextStyles.bodyLargeBold.copyWith(
                  color: ColorsApp.textPrimary,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              InkWell(
                onTap: () {
                  context.push(
                    AddressPage(
                      checkout: true,
                      isFromCart: isFromCart,
                      buyNowRequest: buyNowRequest,
                      buyCartRequest: buyCartRequest,
                    ),
                  );
                },
                child: Text(
                  'Ubah',
                  style: SedayuTextStyles.bodyLargeBold.copyWith(
                    color: ColorsApp.textPrimary,
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
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
