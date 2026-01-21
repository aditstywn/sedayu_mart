import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:smart_agro/core/extensions/build_context_ext.dart';
import '../../data/models/request/change_password_request_model.dart';

import '../../../../core/component/buttons.dart';
import '../../../../core/component/custom_textformfield.dart';
import '../../../../core/component/space.dart';
import '../../../../core/style/color/colors_app.dart';
import '../bloc/submit_profile/submit_profile_bloc.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({super.key});

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _oldPasswordController = TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

  @override
  void dispose() {
    _oldPasswordController.dispose();
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ganti Password')),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(12),
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
                    CustomTextFormField(
                      controller: _oldPasswordController,
                      label: 'Password Lama',
                      hintText: 'Masukkan password lama',
                      obscureText: _obscurePassword,
                      prefixIcon: const Icon(Icons.lock_outline, size: 20),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscurePassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: ColorsApp.textSecondary,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscurePassword = !_obscurePassword;
                          });
                        },
                      ),
                      isRequired: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Password lama harus diisi';
                        }
                        return null;
                      },
                    ),
                    const SpaceHeight(16),
                    CustomTextFormField(
                      controller: _newPasswordController,
                      label: 'Password Baru',
                      hintText: 'Masukkan password baru',
                      prefixIcon: const Icon(Icons.lock_outline, size: 20),
                      obscureText: _obscureConfirmPassword,
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscureConfirmPassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: ColorsApp.textSecondary,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscureConfirmPassword = !_obscureConfirmPassword;
                          });
                        },
                      ),
                      isRequired: true,

                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Password baru harus diisi';
                        }
                        if (value.length < 6) {
                          return 'Password baru minimal 6 karakter';
                        }
                        return null;
                      },
                    ),
                    const SpaceHeight(16),
                    CustomTextFormField(
                      controller: _confirmPasswordController,
                      label: 'Konfirmasi Password',
                      hintText: 'Masukkan konfirmasi password',
                      prefixIcon: const Icon(Icons.lock_outline, size: 20),
                      isRequired: true,
                      obscureText: _obscureConfirmPassword,
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscureConfirmPassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: ColorsApp.textSecondary,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscureConfirmPassword = !_obscureConfirmPassword;
                          });
                        },
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Konfirmasi password harus diisi';
                        }
                        if (value != _newPasswordController.text) {
                          return 'Konfirmasi password tidak sesuai';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              const SpaceHeight(20),
              BlocConsumer<SubmitProfileBloc, SubmitProfileState>(
                listener: (context, state) {
                  switch (state) {
                    case ErrorSubmitProfile(:final message):
                      context.showAlertError(message: message);
                    case ChangePasswordSuccess(:final message):
                      context.showAlertSuccess(message: message);
                      _oldPasswordController.clear();
                      _newPasswordController.clear();
                      _confirmPasswordController.clear();
                    default:
                  }
                },
                builder: (context, state) {
                  if (state is LoadingSubmitProfile) {
                    return Button.filled(
                      onPressed: () {},
                      label: '',
                      color: ColorsApp.primary,
                      loading: true,
                    );
                  }
                  return Button.filled(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        final change = ChangePasswordRequestModel(
                          passwordOld: _oldPasswordController.text,
                          passwordNew: _newPasswordController.text,
                          passwordConfirmation: _confirmPasswordController.text,
                        );

                        context.read<SubmitProfileBloc>().add(
                          SubmitProfileEvent.changePassword(change),
                        );
                      }
                    },
                    label: 'Simpan',
                    color: ColorsApp.primary,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
