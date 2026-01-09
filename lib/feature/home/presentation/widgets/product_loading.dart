import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

import '../../../../core/component/space.dart';
import '../../../../core/style/color/colors_app.dart';

class ProductLoading extends StatelessWidget {
  const ProductLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer(
      child: Container(
        decoration: BoxDecoration(
          color: ColorsApp.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: ColorsApp.primary.withAlpha(77), width: 1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 120,
              decoration: BoxDecoration(
                color: ColorsApp.shimer,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 17,
                    width: 120,
                    decoration: BoxDecoration(
                      color: ColorsApp.shimer,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  const SpaceHeight(3),
                  Container(
                    height: 16,
                    width: 70,
                    decoration: BoxDecoration(
                      color: ColorsApp.shimer,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  const SpaceHeight(10),
                  Row(
                    children: [
                      Container(
                        height: 26,
                        width: 112,
                        decoration: BoxDecoration(
                          color: ColorsApp.shimer,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      SpaceWidth(4),
                      Container(
                        height: 26,
                        width: 30,
                        decoration: BoxDecoration(
                          color: ColorsApp.shimer,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
