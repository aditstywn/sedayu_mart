import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

import '../../../../core/component/space.dart';
import '../../../../core/style/color/colors_app.dart';

class ProfileLoading extends StatelessWidget {
  const ProfileLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer(
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 20),
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
              children: [
                Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                    color: ColorsApp.shimer,
                    borderRadius: BorderRadius.circular(45),
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  width: 200,
                  height: 22,
                  decoration: BoxDecoration(
                    color: ColorsApp.shimer,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                const SizedBox(height: 6),
                Container(
                  width: 150,
                  height: 20,
                  decoration: BoxDecoration(
                    color: ColorsApp.shimer,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                const SizedBox(height: 4),
                Container(
                  width: 120,
                  height: 20,
                  decoration: BoxDecoration(
                    color: ColorsApp.shimer,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ],
            ),
          ),
          SpaceHeight(12),
          Container(
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
                  child: Container(
                    height: 80,
                    margin: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: ColorsApp.shimer,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 80,
                    margin: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: ColorsApp.shimer,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 80,
                    margin: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: ColorsApp.shimer,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SpaceHeight(12),
          Container(
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
              children: List.generate(
                4,
                (index) => Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 20,
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 44,
                            height: 44,
                            decoration: BoxDecoration(
                              color: ColorsApp.shimer,
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 23,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    color: ColorsApp.shimer,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                                SpaceHeight(8),
                                Container(
                                  height: 14,
                                  width: 195,
                                  decoration: BoxDecoration(
                                    color: ColorsApp.shimer,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 24,
                            width: 24,
                            decoration: BoxDecoration(
                              color: ColorsApp.shimer,
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                        ],
                      ),
                    ),
                    if (index < 3)
                      Divider(
                        color: ColorsApp.borderColor.withAlpha(77),
                        height: 1,
                      ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
