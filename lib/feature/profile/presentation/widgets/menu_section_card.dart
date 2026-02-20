import 'package:flutter/material.dart';
import 'package:smart_agro/core/extensions/build_context_ext.dart';
import 'package:smart_agro/feature/profile/presentation/pages/address_page.dart';

import '../../../../core/style/color/colors_app.dart';
import '../../../../core/style/thypograpy/sedayu_text_style.dart';
import '../../data/models/response/profile_response_model.dart';
import '../pages/change_password_page.dart';
import '../pages/update_profile.dart';

class MenuSectionCard extends StatelessWidget {
  final ProfilProfil? profile;
  const MenuSectionCard({super.key, this.profile});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          _buildMenuItem(
            icon: Icons.edit,
            title: 'Edit Profil',
            subtitle: 'Ubah informasi profil Anda',
            onTap: () {
              context.push(UpdateProfile(profile: profile));
            },
          ),
          _buildDivider(),
          _buildMenuItem(
            icon: Icons.location_on,
            title: 'Alamat',
            subtitle: 'Kelola alamat pengiriman',
            onTap: () {
              context.push(const AddressPage());
            },
          ),
          _buildDivider(),
          _buildMenuItem(
            icon: Icons.lock,
            title: 'Ganti Password',
            subtitle: 'Perbarui password Anda',
            onTap: () {
              context.push(const ChangePasswordPage());
            },
          ),

          // _buildDivider(),
          // _buildMenuItem(
          //   icon: Icons.help_outline,
          //   title: 'Bantuan',
          //   subtitle: 'Pusat bantuan & FAQ',
          //   onTap: () {},
          // ),
        ],
      ),
    );
  }

  Widget _buildMenuItem({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  color: ColorsApp.primary.withAlpha(26),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(icon, color: ColorsApp.primary, size: 22),
              ),
              const SizedBox(width: 16),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: SedayuTextStyles.bodyLargeBold.copyWith(
                        color: ColorsApp.textPrimary,
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      subtitle,
                      style: SedayuTextStyles.labelSmall.copyWith(
                        color: ColorsApp.textSecondary,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),

              const Icon(
                Icons.chevron_right,
                color: ColorsApp.textSecondary,
                size: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDivider() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(height: 1, color: ColorsApp.borderColor.withAlpha(51)),
    );
  }
}
