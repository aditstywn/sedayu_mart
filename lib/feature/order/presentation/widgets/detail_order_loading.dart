import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

import '../../../../core/style/color/colors_app.dart';

class DetailOrderLoading extends StatelessWidget {
  const DetailOrderLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Shimmer(
          child: Container(
            height: 144,
            width: double.infinity,
            decoration: BoxDecoration(
              color: ColorsApp.shimer,
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        const SizedBox(height: 12),
        Shimmer(
          child: Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
              color: ColorsApp.shimer,
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        const SizedBox(height: 12),
        Shimmer(
          child: Container(
            height: 188,
            width: double.infinity,
            decoration: BoxDecoration(
              color: ColorsApp.shimer,
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        const SizedBox(height: 12),
        Shimmer(
          child: Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
              color: ColorsApp.shimer,
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ],
    );
  }
}
