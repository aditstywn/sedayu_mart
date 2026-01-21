import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

import '../../../../core/component/space.dart';
import '../../../../core/style/color/colors_app.dart';

class CheckoutLoading extends StatelessWidget {
  const CheckoutLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SpaceHeight(16),
                Shimmer(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
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
                            Container(
                              height: 23,
                              width: 150,
                              decoration: BoxDecoration(
                                color: ColorsApp.shimer,
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                            Container(
                              height: 20,
                              width: 50,
                              decoration: BoxDecoration(
                                color: ColorsApp.shimer,
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                          ],
                        ),
                        SpaceHeight(12),
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: ColorsApp.backgroundColor,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: ColorsApp.primary.withAlpha(51),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 22,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: ColorsApp.shimer,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                              const SizedBox(height: 4),
                              Container(
                                height: 19,
                                width: 120,
                                decoration: BoxDecoration(
                                  color: ColorsApp.shimer,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                              const SizedBox(height: 4),
                              Container(
                                height: 19,
                                width: 190,
                                decoration: BoxDecoration(
                                  color: ColorsApp.shimer,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                              const SizedBox(height: 4),
                              Container(
                                height: 19,
                                width: 250,
                                decoration: BoxDecoration(
                                  color: ColorsApp.shimer,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SpaceHeight(12),
                Shimmer(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
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
                        Container(
                          height: 23,
                          width: 150,
                          decoration: BoxDecoration(
                            color: ColorsApp.shimer,
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                        SpaceHeight(12),
                        Container(
                          margin: const EdgeInsets.only(bottom: 8),
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: ColorsApp.shimer.withAlpha(100),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            children: [
                              Shimmer(
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: ColorsApp.shimer,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                              ),
                              SpaceWidth(12),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Shimmer(
                                    child: Container(
                                      height: 20,
                                      width: 125,
                                      decoration: BoxDecoration(
                                        color: ColorsApp.shimer,
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                    ),
                                  ),
                                  SpaceHeight(2),
                                  Shimmer(
                                    child: Container(
                                      height: 17,
                                      width: 96,
                                      decoration: BoxDecoration(
                                        color: ColorsApp.shimer,
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                    ),
                                  ),
                                  SpaceHeight(2),
                                  Shimmer(
                                    child: Container(
                                      height: 19,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        color: ColorsApp.shimer,
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 12),
                        Container(
                          height: 1,
                          color: ColorsApp.borderColor.withAlpha(51),
                        ),
                        const SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Shimmer(
                              child: Container(
                                height: 19,
                                width: 52,
                                decoration: BoxDecoration(
                                  color: ColorsApp.shimer,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                            ),
                            Shimmer(
                              child: Container(
                                height: 19,
                                width: 60,
                                decoration: BoxDecoration(
                                  color: ColorsApp.shimer,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SpaceHeight(4),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Shimmer(
                              child: Container(
                                height: 19,
                                width: 81,
                                decoration: BoxDecoration(
                                  color: ColorsApp.shimer,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                            ),
                            Shimmer(
                              child: Container(
                                height: 19,
                                width: 75,
                                decoration: BoxDecoration(
                                  color: ColorsApp.shimer,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SpaceHeight(8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Shimmer(
                              child: Container(
                                height: 22,
                                width: 133,
                                decoration: BoxDecoration(
                                  color: ColorsApp.shimer,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                            ),
                            Shimmer(
                              child: Container(
                                height: 19,
                                width: 90,
                                decoration: BoxDecoration(
                                  color: ColorsApp.shimer,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SpaceHeight(12),
                Shimmer(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Shimmer(
                          child: Container(
                            height: 23,
                            width: 150,
                            margin: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: ColorsApp.shimer,
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                        ),
                        Shimmer(
                          child: Container(
                            height: 96,
                            width: double.infinity,
                            margin: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 8,
                            ),
                            decoration: BoxDecoration(
                              color: ColorsApp.shimer,
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: ColorsApp.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withAlpha(15),
                blurRadius: 8,
                offset: const Offset(0, -2),
              ),
            ],
          ),
          child: SafeArea(
            top: false,
            child: SizedBox(
              width: double.infinity,

              child: Shimmer(
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: ColorsApp.shimer,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
