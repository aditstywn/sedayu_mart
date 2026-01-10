import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

import '../../../../core/component/space.dart';
import '../../../../core/style/color/colors_app.dart';

class DetailProductLoading extends StatelessWidget {
  const DetailProductLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer(
      child: SingleChildScrollView(
        child: Container(
          color: ColorsApp.backgroundColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 327,
                color: ColorsApp.shimer,
              ),

              Container(
                color: ColorsApp.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                child: Row(
                  children: List.generate(
                    3,
                    (index) => Container(
                      margin: const EdgeInsets.only(right: 10),
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: ColorsApp.shimer,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
              ),
              SpaceHeight(16),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: ColorsApp.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 108,
                      height: 23,
                      decoration: BoxDecoration(
                        color: ColorsApp.shimer,
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    SpaceHeight(8),
                    Row(
                      children: [
                        Container(
                          width: 100,
                          height: 38,
                          decoration: BoxDecoration(
                            color: ColorsApp.shimer,
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                        SpaceWidth(12),
                        Container(
                          width: 100,
                          height: 38,
                          decoration: BoxDecoration(
                            color: ColorsApp.shimer,
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SpaceHeight(16),
              Container(
                height: 250,
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: ColorsApp.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 108,
                      height: 30,
                      decoration: BoxDecoration(
                        color: ColorsApp.shimer,
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    SpaceHeight(8),
                    Container(
                      width: double.infinity,
                      height: 180,
                      decoration: BoxDecoration(
                        color: ColorsApp.shimer,
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
