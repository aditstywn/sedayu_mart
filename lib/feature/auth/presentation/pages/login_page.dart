import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../../../core/component/buttons.dart';
import '../../../../core/component/custom_checkbox.dart';
import '../../../../core/component/custom_textformfield.dart';
import '../../../../core/component/space.dart';
import '../../../../core/extensions/build_context_ext.dart';
import '../../../../core/style/color/colors_app.dart';
import '../../../main/main_nav.dart';
import '../../../profile/data/models/response/profile_response_model.dart';
import '../../data/datasource/auth_local_datasource.dart';
import '../../data/models/request/login_request_model.dart';
import '../bloc/auth_bloc.dart';
import 'register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscurePassword = true;
  bool isRemember = false;

  void getKredensial() async {
    final auth = await AuthLocalDatasource().getRememberMe();

    setState(() {});
    if (auth != null) {
      _emailController.text = auth.email ?? '';
      _passwordController.text = auth.password ?? '';
      setState(() {
        isRemember = true;
      });
    } else {
      setState(() {
        isRemember = false;
      });
    }
  }

  String? appVersion;

  Future<void> _loadAppVersion() async {
    final info = await PackageInfo.fromPlatform();
    setState(() {
      appVersion = info.version;
    });
  }

  @override
  void initState() {
    super.initState();
    getKredensial();
    _loadAppVersion();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
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
                            'Masuk',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: ColorsApp.textPrimary,
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'Silakan masuk untuk melanjutkan',
                            style: TextStyle(
                              fontSize: 14,
                              color: ColorsApp.textSecondary,
                            ),
                          ),
                          const SizedBox(height: 32),
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
                          Row(
                            children: [
                              CustomCheckbox(
                                value: isRemember,
                                onChanged: (value) {
                                  setState(() {
                                    isRemember = value ?? false;
                                  });

                                  if (isRemember) {
                                    if (_emailController.text.isNotEmpty &&
                                        _passwordController.text.isNotEmpty) {
                                      AuthLocalDatasource().saveRememberMe(
                                        LoginRequestModel(
                                          email: _emailController.text,
                                          password: _passwordController.text,
                                        ),
                                      );
                                    }
                                  } else {
                                    AuthLocalDatasource().removeRememberMe();
                                  }
                                },
                              ),
                              Text(
                                'Simpan Akun',
                                style: TextStyle(
                                  color: ColorsApp.primary,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Spacer(),
                              Text(
                                'Lupa Password?',
                                style: TextStyle(
                                  color: ColorsApp.primary,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),

                          BlocConsumer<AuthBloc, AuthState>(
                            listener: (context, state) {
                              switch (state) {
                                case LoginSuccess(:final login):
                                  AuthLocalDatasource().saveAccessToken(
                                    login.accessToken ?? '',
                                  );
                                  AuthLocalDatasource().saveUser(
                                    ProfilProfil(
                                      nama: login.data?.nama,
                                      email: login.data?.email,
                                    ),
                                  );

                                  _emailController.clear();
                                  _passwordController.clear();
                                  context.pushReplacement(MainNav());

                                  break;
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
                                    final loginRequest = LoginRequestModel(
                                      email: _emailController.text,
                                      password: _passwordController.text,
                                    );
                                    context.read<AuthBloc>().add(
                                      AuthEvent.login(loginRequest),
                                    );
                                  }
                                },
                                label: 'Masuk',
                                color: ColorsApp.primary,
                                borderRadius: 8,
                              );
                            },
                          ),
                          SpaceHeight(8),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Text(
                              appVersion != null ? 'V.$appVersion' : '',
                              style: const TextStyle(
                                color: ColorsApp.textSecondary,
                                fontSize: 12,
                              ),
                            ),
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
                        'Belum punya akun?',
                        style: TextStyle(
                          color: ColorsApp.textSecondary,
                          fontSize: 15,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          context.push(RegisterPage());
                        },
                        child: const Text(
                          'Daftar Sekarang',
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
