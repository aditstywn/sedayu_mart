import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import 'package:smart_agro/core/component/space.dart';

import '../../../../core/style/color/colors_app.dart';

class OrderLoading extends StatelessWidget {
  const OrderLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(20),
      itemCount: 3,
      itemBuilder: (context, index) {
        return Shimmer(
          child: Container(
            margin: const EdgeInsets.only(bottom: 16),
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: ColorsApp.shimer,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 140,
                            height: 19,
                            decoration: BoxDecoration(
                              color: ColorsApp.white,
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          const SizedBox(height: 8),

                          Container(
                            width: 95,
                            height: 17,
                            decoration: BoxDecoration(
                              color: ColorsApp.white,
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 93,
                        height: 33,
                        decoration: BoxDecoration(
                          color: ColorsApp.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: ColorsApp.shimer,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      SpaceWidth(12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 98,
                            height: 20,
                            decoration: BoxDecoration(
                              color: ColorsApp.shimer,
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          SpaceHeight(4),
                          Container(
                            width: 85,
                            height: 19,
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

                Container(
                  width: double.infinity,
                  height: 1,
                  color: ColorsApp.primary.withAlpha(25),
                ),

                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 108.3,
                            height: 17,
                            decoration: BoxDecoration(
                              color: ColorsApp.shimer,
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          SpaceHeight(4),
                          Container(
                            width: 88,
                            height: 19,
                            decoration: BoxDecoration(
                              color: ColorsApp.shimer,
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 129,
                        height: 30,
                        decoration: BoxDecoration(
                          color: ColorsApp.shimer,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
