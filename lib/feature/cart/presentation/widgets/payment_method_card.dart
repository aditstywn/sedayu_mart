import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smart_agro/core/extensions/build_context_ext.dart';

import '../../../../core/style/color/colors_app.dart';
import '../../../../core/style/thypograpy/sedayu_text_style.dart';
import '../../data/models/response/rekening_list_response_model.dart';

class PaymentMethodCard extends StatefulWidget {
  final List<Rekening>? rekenings;
  final Function(int?)? onSelected;
  const PaymentMethodCard({super.key, this.rekenings, this.onSelected});

  @override
  State<PaymentMethodCard> createState() => _PaymentMethodCardState();
}

class _PaymentMethodCardState extends State<PaymentMethodCard> {
  int? _selectedPaymentMethod;
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
                Icons.account_balance_outlined,
                color: ColorsApp.primary,
                size: 22,
              ),
              const SizedBox(width: 8),
              Text(
                'Metode Pembayaran',
                style: SedayuTextStyles.bodyLargeBold.copyWith(
                  color: ColorsApp.textPrimary,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          ...?widget.rekenings?.map((method) {
            final isSelected = _selectedPaymentMethod == method.id;
            return InkWell(
              onTap: () {
                setState(() {
                  _selectedPaymentMethod = method.id;
                  widget.onSelected?.call(_selectedPaymentMethod);
                });
              },
              borderRadius: BorderRadius.circular(12),
              child: Container(
                margin: const EdgeInsets.only(bottom: 10),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: isSelected
                      ? ColorsApp.lightGreen.withAlpha(31)
                      : ColorsApp.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: isSelected
                        ? ColorsApp.primary
                        : ColorsApp.borderColor,
                    width: isSelected ? 1.5 : 1,
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 22,
                      height: 22,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: isSelected
                              ? ColorsApp.primary
                              : ColorsApp.grey.withAlpha(128),
                          width: 2,
                        ),
                      ),
                      child: isSelected
                          ? Center(
                              child: Container(
                                width: 11,
                                height: 11,
                                decoration: const BoxDecoration(
                                  color: ColorsApp.primary,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            )
                          : null,
                    ),
                    const SizedBox(width: 14),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Bank ${method.namaBank}',
                            style: SedayuTextStyles.bodyLargeBold.copyWith(
                              color: ColorsApp.textPrimary,
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            method.nomorRekening ?? '-',
                            style: SedayuTextStyles.bodyLargeMedium.copyWith(
                              color: ColorsApp.textSecondary,
                              fontSize: 13,
                            ),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            'a.n ${method.atasNama ?? '-'}',
                            style: SedayuTextStyles.bodyLargeMedium.copyWith(
                              color: ColorsApp.textSecondary,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    if (isSelected)
                      GestureDetector(
                        onTap: () {
                          Clipboard.setData(
                            ClipboardData(text: method.nomorRekening ?? ''),
                          );
                          context.showAlertSuccess(
                            message: 'Nomor rekening disalin',
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: ColorsApp.primary.withAlpha(25),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(
                            Icons.copy_rounded,
                            size: 20,
                            color: ColorsApp.primary,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}
