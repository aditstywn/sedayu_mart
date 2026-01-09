import 'package:flutter/material.dart';

import '../../../../core/style/color/colors_app.dart';
import '../../../../core/style/thypograpy/sedayu_text_style.dart';
import '../../data/models/response/profile_response_model.dart';

class StatisticCard extends StatelessWidget {
  final StatistikPesanan? statistikPesanan;
  const StatisticCard({super.key, this.statistikPesanan});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
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
      child: Row(
        children: [
          Expanded(
            child: _buildStatItem(
              icon: Icons.shopping_bag,
              value: '${statistikPesanan?.totalPesanan ?? 0}',
              label: 'Pesanan',
              color: ColorsApp.primary,
            ),
          ),
          Container(
            width: 1,
            height: 40,
            color: ColorsApp.borderColor.withAlpha(77),
          ),
          Expanded(
            child: _buildStatItem(
              icon: Icons.local_shipping,
              value: '${statistikPesanan?.pesananDikirim ?? 0}',
              label: 'Dikirim',
              color: Colors.blue,
            ),
          ),
          Container(
            width: 1,
            height: 40,
            color: ColorsApp.borderColor.withAlpha(77),
          ),
          Expanded(
            child: _buildStatItem(
              icon: Icons.check_circle,
              value: '${statistikPesanan?.pesananSelesai ?? 0}',
              label: 'Selesai',
              color: ColorsApp.success,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatItem({
    required IconData icon,
    required String value,
    required String label,
    required Color color,
  }) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: color.withAlpha(26),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, size: 20, color: color),
        ),
        const SizedBox(height: 8),
        Text(
          value,
          style: SedayuTextStyles.headlineSmall.copyWith(
            color: ColorsApp.textPrimary,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          label,
          style: SedayuTextStyles.labelSmall.copyWith(
            color: ColorsApp.textSecondary,
            fontSize: 11,
          ),
        ),
      ],
    );
  }
}
