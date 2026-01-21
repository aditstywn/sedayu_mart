import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

import '../../../../core/component/space.dart';
import '../../../../core/style/color/colors_app.dart';

class AddressLoading extends StatelessWidget {
  const AddressLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 2,
      padding: const EdgeInsets.all(16),
      itemBuilder: (context, index) {
        return Shimmer(
          child: Container(
            margin: const EdgeInsets.only(bottom: 12),

            decoration: BoxDecoration(
              color: ColorsApp.white,
              borderRadius: BorderRadius.circular(10),

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
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Nama dan telepon
                      Row(
                        children: [
                          const Icon(
                            Icons.person_outline,
                            size: 16,
                            color: ColorsApp.textSecondary,
                          ),
                          const SizedBox(width: 6),
                          Container(
                            height: 14,
                            width: 120,
                            decoration: BoxDecoration(
                              color: ColorsApp.shimer,
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),

                          SpaceWidth(8),
                        ],
                      ),
                      const SizedBox(height: 8),

                      // Alamat lengkap
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.location_on_outlined,
                            size: 16,
                            color: ColorsApp.textSecondary,
                          ),
                          const SizedBox(width: 6),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 14,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: ColorsApp.shimer,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                                SpaceHeight(4),
                                Container(
                                  height: 14,
                                  width: 200,
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
                      SpaceHeight(8),
                      Row(
                        children: [
                          const Icon(
                            Icons.phone_outlined,
                            size: 16,
                            color: ColorsApp.textSecondary,
                          ),
                          SpaceWidth(6),
                          Container(
                            height: 14,
                            width: 130,
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

                // Divider
                const Divider(height: 1, color: ColorsApp.borderColor),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 28,
                      margin: const EdgeInsets.only(top: 8, bottom: 8),
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                        color: ColorsApp.shimer,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      width: 60,
                    ),
                    SpaceWidth(8),
                    Container(
                      height: 28,
                      margin: const EdgeInsets.only(top: 8, bottom: 8),
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                        color: ColorsApp.shimer,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      width: 60,
                    ),
                    SpaceWidth(8),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
