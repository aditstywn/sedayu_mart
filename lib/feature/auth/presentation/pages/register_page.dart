import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/component/buttons.dart';
import '../../../../core/component/custom_textformfield.dart';
import '../../../../core/component/space.dart';
import '../../../../core/extensions/build_context_ext.dart';
import '../../../../core/style/color/colors_app.dart';
import '../../data/models/request/register_request_model.dart';
import '../bloc/auth_bloc.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _nameController = TextEditingController();
  final _addressController = TextEditingController();
  final _phoneController = TextEditingController();
  final _cityController = TextEditingController();

  bool _obscurePassword = true;
  bool isRemember = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _nameController.dispose();
    _addressController.dispose();
    _phoneController.dispose();
    _cityController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.white,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [ColorsApp.primary, Colors.white],
            stops: [0.0, 0.4],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Smart Agro',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 1.2,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Belanja Mudah, Harga Terjangkau',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 40),

                  Container(
                    constraints: const BoxConstraints(maxWidth: 400),
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withAlpha(25),
                          blurRadius: 20,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Daftar Akun',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: ColorsApp.textPrimary,
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'Silakan mengisi data diri Anda untuk membuat akun baru',
                            style: TextStyle(
                              fontSize: 14,
                              color: ColorsApp.textSecondary,
                            ),
                          ),
                          const SizedBox(height: 32),
                          const Text(
                            'Nama Lengkap',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: ColorsApp.textPrimary,
                            ),
                          ),
                          const SizedBox(height: 8),
                          CustomTextFormField(
                            controller: _nameController,
                            hintText: 'Nama Lengkap',
                            prefixIcon: Container(
                              margin: const EdgeInsets.all(10),
                              padding: const EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                color: ColorsApp.lightGreen.withAlpha(51),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Icon(
                                Icons.person_outline,
                                color: ColorsApp.primary,
                                size: 20,
                              ),
                            ),
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.text,
                            fillColor: ColorsApp.backgroundColor,
                            focusedBorderColor: ColorsApp.primary,
                            borderRadius: 8,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Nama Lengkap tidak boleh kosong';
                              }

                              return null;
                            },
                          ),
                          SpaceHeight(20),
                          const Text(
                            'Alamat',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: ColorsApp.textPrimary,
                            ),
                          ),
                          const SizedBox(height: 8),
                          CustomTextFormField(
                            controller: _addressController,
                            hintText: 'Alamat',
                            prefixIcon: Container(
                              margin: const EdgeInsets.all(10),
                              padding: const EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                color: ColorsApp.lightGreen.withAlpha(51),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Icon(
                                Icons.home_outlined,
                                color: ColorsApp.primary,
                                size: 20,
                              ),
                            ),
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.text,
                            fillColor: ColorsApp.backgroundColor,
                            focusedBorderColor: ColorsApp.primary,
                            borderRadius: 8,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Alamat tidak boleh kosong';
                              }

                              return null;
                            },
                          ),
                          SpaceHeight(20),
                          const Text(
                            'Kabupaten/Kota',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: ColorsApp.textPrimary,
                            ),
                          ),
                          const SizedBox(height: 8),
                          CustomTextFormField(
                            controller: _cityController,
                            hintText: 'Kabupaten/Kota',
                            prefixIcon: Container(
                              margin: const EdgeInsets.all(10),
                              padding: const EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                color: ColorsApp.lightGreen.withAlpha(51),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Icon(
                                Icons.location_city_outlined,
                                color: ColorsApp.primary,
                                size: 20,
                              ),
                            ),
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.text,
                            fillColor: ColorsApp.backgroundColor,
                            focusedBorderColor: ColorsApp.primary,
                            borderRadius: 8,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Kabupaten/Kota tidak boleh kosong';
                              }

                              return null;
                            },
                          ),
                          SpaceHeight(20),
                          const Text(
                            'No. Handphone',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: ColorsApp.textPrimary,
                            ),
                          ),
                          const SizedBox(height: 8),
                          CustomTextFormField(
                            controller: _phoneController,
                            hintText: 'No. Handphone',
                            prefixIcon: Container(
                              margin: const EdgeInsets.all(10),
                              padding: const EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                color: ColorsApp.lightGreen.withAlpha(51),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Icon(
                                Icons.phone_outlined,
                                color: ColorsApp.primary,
                                size: 20,
                              ),
                            ),
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.phone,
                            fillColor: ColorsApp.backgroundColor,
                            focusedBorderColor: ColorsApp.primary,
                            borderRadius: 8,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'No. Handphone tidak boleh kosong';
                              }

                              return null;
                            },
                          ),
                          SpaceHeight(20),
                          const Text(
                            'Email',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: ColorsApp.textPrimary,
                            ),
                          ),
                          const SizedBox(height: 8),
                          CustomTextFormField(
                            controller: _emailController,
                            hintText: 'Example@gmail.com',
                            prefixIcon: Container(
                              margin: const EdgeInsets.all(10),
                              padding: const EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                color: ColorsApp.lightGreen.withAlpha(51),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Icon(
                                Icons.email_outlined,
                                color: ColorsApp.primary,
                                size: 20,
                              ),
                            ),
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.emailAddress,
                            fillColor: ColorsApp.backgroundColor,
                            focusedBorderColor: ColorsApp.primary,
                            borderRadius: 8,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Email tidak boleh kosong';
                              }
                              if (!RegExp(
                                r'^[^@]+@[^@]+\.[^@]+',
                              ).hasMatch(value)) {
                                return 'Masukkan email yang valid';
                              }
                              return null;
                            },
                          ),
                          SpaceHeight(20),
                          const Text(
                            'Password',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: ColorsApp.textPrimary,
                            ),
                          ),
                          const SizedBox(height: 8),
                          CustomTextFormField(
                            controller: _passwordController,
                            obscureText: _obscurePassword,
                            hintText: 'Masukkan password',
                            prefixIcon: Container(
                              margin: const EdgeInsets.all(10),
                              padding: const EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                color: ColorsApp.lightGreen.withAlpha(51),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Icon(
                                Icons.lock_outline,
                                color: ColorsApp.primary,
                                size: 20,
                              ),
                            ),
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
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.emailAddress,
                            fillColor: ColorsApp.backgroundColor,
                            focusedBorderColor: ColorsApp.primary,
                            borderRadius: 8,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Password tidak boleh kosong';
                              }
                              if (value.length < 8) {
                                return 'Password minimal 8 karakter';
                              }
                              return null;
                            },
                          ),
                          SpaceHeight(20),
                          const Text(
                            'Konfirmasi Password',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: ColorsApp.textPrimary,
                            ),
                          ),
                          const SizedBox(height: 8),
                          CustomTextFormField(
                            controller: _confirmPasswordController,
                            obscureText: _obscurePassword,
                            hintText: 'Konfirmasi password',
                            prefixIcon: Container(
                              margin: const EdgeInsets.all(10),
                              padding: const EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                color: ColorsApp.lightGreen.withAlpha(51),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Icon(
                                Icons.lock_outline,
                                color: ColorsApp.primary,
                                size: 20,
                              ),
                            ),
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
                            textInputAction: TextInputAction.done,
                            keyboardType: TextInputType.emailAddress,
                            fillColor: ColorsApp.backgroundColor,
                            focusedBorderColor: ColorsApp.primary,
                            borderRadius: 8,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Password tidak boleh kosong';
                              }
                              if (value.length < 8) {
                                return 'Password minimal 8 karakter';
                              }
                              if (value != _passwordController.text) {
                                return 'Password tidak sesuai';
                              }
                              return null;
                            },
                          ),
                          SpaceHeight(32),

                          BlocConsumer<AuthBloc, AuthState>(
                            listener: (context, state) {
                              switch (state) {
                                case RegisterSuccess():
                                  context.showAlertSuccess(
                                    message:
                                        'Pendaftaran berhasil! Silakan masuk dengan akun Anda.',
                                  );
                                  context.pop();
                                case ErrorAuth(:final message):
                                  context.showAlertError(message: message);
                                default:
                                  break;
                              }
                            },
                            builder: (context, state) {
                              if (state is LoadingAuth) {
                                return Button.filled(
                                  onPressed: () {},
                                  label: '',
                                  color: ColorsApp.primary,
                                  borderRadius: 8,
                                  loading: true,
                                );
                              }
                              return Button.filled(
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    final registerRequest =
                                        RegisterRequestModel(
                                          nama: _nameController.text,
                                          alamat: _addressController.text,
                                          kabupaten: _cityController.text,
                                          nomorTelepon: _phoneController.text,
                                          email: _emailController.text,
                                          password: _passwordController.text,
                                          passwordConfirmation:
                                              _confirmPasswordController.text,
                                        );
                                    context.read<AuthBloc>().add(
                                      AuthEvent.register(registerRequest),
                                    );
                                  }
                                },
                                label: 'Daftar Sekarang',
                                color: ColorsApp.primary,
                                borderRadius: 8,
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Sudah punya akun?',
                        style: TextStyle(
                          color: ColorsApp.textSecondary,
                          fontSize: 15,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          context.pop();
                        },
                        child: const Text(
                          'Masuk Sekarang',
                          style: TextStyle(
                            color: ColorsApp.primary,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
