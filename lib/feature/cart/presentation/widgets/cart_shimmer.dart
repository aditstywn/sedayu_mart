import 'package:flutter/material.dart';
import 'package:sedayu_mart/core/component/space.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import '../../../../core/style/color/colors_app.dart';

class CartShimmer extends StatelessWidget {
  const CartShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: 2,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(bottom: 12),
                decoration: BoxDecoration(
                  color: ColorsApp.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: ColorsApp.shimer, width: 1),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withAlpha(10),
                      blurRadius: 6,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        children: [
                          Shimmer(
                            color: ColorsApp.shimer,
                            child: Container(
                              width: 24,
                              height: 24,
                              decoration: BoxDecoration(
                                color: ColorsApp.shimer,
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Shimmer(
                                color: ColorsApp.shimer,
                                child: Container(
                                  width: 150,
                                  height: 22,
                                  decoration: BoxDecoration(
                                    color: ColorsApp.shimer,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                              ),
                              SpaceHeight(4),
                              Shimmer(
                                color: ColorsApp.shimer,
                                child: Container(
                                  width: 81,
                                  height: 17,
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
                    const Divider(height: 1, color: ColorsApp.shimer),

                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Shimmer(
                            color: ColorsApp.shimer,
                            child: Container(
                              width: 24,
                              height: 24,
                              decoration: BoxDecoration(
                                color: ColorsApp.shimer,
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),

                          Shimmer(
                            color: ColorsApp.shimer,
                            child: Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                color: ColorsApp.shimer,
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),

                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Shimmer(
                                  color: ColorsApp.shimer,
                                  child: Container(
                                    width: 100,
                                    height: 14,

                                    decoration: BoxDecoration(
                                      color: ColorsApp.shimer,
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 4),

                                Shimmer(
                                  color: ColorsApp.shimer,
                                  child: Container(
                                    width: 80,
                                    height: 12,
                                    decoration: BoxDecoration(
                                      color: ColorsApp.shimer,
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 4),

                                Shimmer(
                                  color: ColorsApp.shimer,
                                  child: Container(
                                    width: 70,
                                    height: 12,
                                    decoration: BoxDecoration(
                                      color: ColorsApp.shimer,
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Shimmer(
                                color: ColorsApp.shimer,
                                child: Container(
                                  width: 22,
                                  height: 22,
                                  decoration: BoxDecoration(
                                    color: ColorsApp.shimer,
                                    shape: BoxShape.rectangle,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 12),
                              Shimmer(
                                color: ColorsApp.shimer,
                                child: Container(
                                  width: 24,
                                  height: 24,
                                  decoration: BoxDecoration(
                                    color: ColorsApp.shimer,
                                    shape: BoxShape.rectangle,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 12),
                              Shimmer(
                                color: ColorsApp.shimer,
                                child: Container(
                                  width: 22,
                                  height: 22,
                                  decoration: BoxDecoration(
                                    color: ColorsApp.shimer,
                                    shape: BoxShape.rectangle,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    const Divider(height: 1, color: ColorsApp.shimer),

                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Shimmer(
                            color: ColorsApp.shimer,
                            child: Container(
                              width: 33,
                              height: 20,
                              decoration: BoxDecoration(
                                color: ColorsApp.shimer,
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                          ),
                          Shimmer(
                            color: ColorsApp.shimer,
                            child: Container(
                              width: 100,
                              height: 20,
                              decoration: BoxDecoration(
                                color: ColorsApp.shimer,
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 8, right: 8, bottom: 12),
          decoration: BoxDecoration(
            color: ColorsApp.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withAlpha(10),
                blurRadius: 8,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Shimmer(
                      color: ColorsApp.shimer,
                      child: Container(
                        width: 60,
                        height: 15,
                        decoration: BoxDecoration(
                          color: ColorsApp.shimer,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                    Shimmer(
                      color: ColorsApp.shimer,
                      child: Container(
                        width: 50,
                        height: 15,
                        decoration: BoxDecoration(
                          color: ColorsApp.shimer,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  ],
                ),
                const SpaceHeight(8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Shimmer(
                      color: ColorsApp.shimer,
                      child: Container(
                        width: 40,
                        height: 20,
                        decoration: BoxDecoration(
                          color: ColorsApp.shimer,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                    Shimmer(
                      color: ColorsApp.shimer,
                      child: Container(
                        width: 80,
                        height: 20,
                        decoration: BoxDecoration(
                          color: ColorsApp.shimer,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  ],
                ),
                const SpaceHeight(8),
                Shimmer(
                  color: ColorsApp.shimer,
                  child: Container(
                    width: double.infinity,
                    height: 50,
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
    );
  }
}
