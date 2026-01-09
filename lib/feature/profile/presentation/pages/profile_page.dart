import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/component/buttons.dart';
import '../../../../core/component/space.dart';
import '../../../../core/extensions/build_context_ext.dart';
import '../../../auth/data/datasource/auth_local_datasource.dart';
import '../../../auth/presentation/bloc/auth_bloc.dart';
import '../../../auth/presentation/pages/login_page.dart';
import '../../data/models/response/profile_response_model.dart';
import '../bloc/profile/profile_bloc.dart';
import '../widgets/menu_section_card.dart';
import '../widgets/profile_header_card.dart';
import '../widgets/statistic_card.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profil')),
      body: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          switch (state) {
            case LoadingProfile():
              return const Center(child: CircularProgressIndicator());
            case ErrorProfile(:final message):
              return Center(child: Text('Error: $message'));
            case ProfileSuccess(:final profile):
              return RefreshIndicator(
                onRefresh: () async {
                  context.read<ProfileBloc>().add(const ProfileEvent.profile());
                },
                child: ListView(
                  padding: const EdgeInsets.all(16),
                  children: [
                    ProfileHeaderCard(
                      profil: profile.data?.profil?.profil ?? ProfilProfil(),
                    ),

                    SpaceHeight(12),

                    StatisticCard(
                      statistikPesanan:
                          profile.data?.profil?.statistikPesanan ??
                          StatistikPesanan(),
                    ),
                    SpaceHeight(12),

                    MenuSectionCard(profile: profile.data?.profil?.profil),

                    const SizedBox(height: 24),

                    BlocConsumer<AuthBloc, AuthState>(
                      listener: (context, state) {
                        switch (state) {
                          case LogoutSuccess(:final logout):
                            context.showAlertSuccess(
                              message: logout.message ?? 'Berhasil logout',
                            );
                            AuthLocalDatasource().deleteAccessToken();
                            AuthLocalDatasource().removeUser();
                            context.pushAndRemoveUntil(
                              const LoginPage(),
                              (route) => false,
                            );
                            break;

                          case ErrorAuth(:final message):
                            context.showAlertError(message: message);
                          default:
                            break;
                        }
                      },
                      builder: (context, state) {
                        if (state is LoadingAuth) {
                          return Button.outlined(
                            onPressed: () {},
                            label: '',
                            borderColor: Colors.red.withAlpha(128),
                            borderRadius: 8,
                            loading: true,
                          );
                        }
                        return Button.outlined(
                          onPressed: () {
                            context.read<AuthBloc>().add(
                              const AuthEvent.logout(),
                            );
                          },
                          label: 'Keluar',
                          icon: const Icon(
                            Icons.logout,
                            size: 20,
                            color: Colors.red,
                          ),
                          textColor: Colors.red,
                          borderColor: Colors.red.withAlpha(128),
                        );
                      },
                    ),
                  ],
                ),
              );
            case _:
              return SizedBox();
          }
        },
      ),
    );
  }
}
