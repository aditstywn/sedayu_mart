import 'space.dart';
import '../style/color/colors_app.dart';
import 'package:flutter/material.dart';

class InfoBannerCard extends StatelessWidget {
  const InfoBannerCard({
    super.key,
    this.svgIcon,
    this.icon,
    this.color,
    this.label,
  });

  final String? label;
  final String? svgIcon;
  final IconData? icon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      foregroundDecoration: BoxDecoration(
        color:
            color?.withValues(alpha: 0.25) ??
            ColorsApp.statusDelivered.withAlpha(100),
        borderRadius: BorderRadius.circular(6),
      ),
      decoration: BoxDecoration(
        color: ColorsApp.white,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (icon != null)
            Icon(icon!, size: 20, color: color ?? ColorsApp.statusDelivered),
          SpaceWidth(5),
          Expanded(
            child: Text(
              label ?? '',
              style: TextStyle(
                color: ColorsApp.primary,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
