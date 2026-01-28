import 'package:flutter/material.dart';

import '../auth/data/datasource/auth_local_datasource.dart';
import '../auth/presentation/pages/login_page.dart';
import 'main_nav.dart';
import 'onboarding_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.5, curve: Curves.easeIn),
      ),
    );

    _scaleAnimation = Tween<double>(begin: 0.5, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.5, curve: Curves.elasticOut),
      ),
    );

    _controller.forward();

    // context.read<CityBloc>().add(CityEvent.city());
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _checkAppStatus(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return _loadingScreen();
          } else if (snapshot.hasData) {
            final data = snapshot.data as Map<String, bool>;
            final hasSeenOnboarding = data['hasSeenOnboarding'] ?? false;
            final hasAccessToken = data['hasAccessToken'] ?? false;

            Future.delayed(const Duration(seconds: 2), () {
              if (context.mounted) {
                if (!hasSeenOnboarding) {
                  // First time user - show onboarding
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OnboardingPage(),
                    ),
                  );
                } else if (hasAccessToken) {
                  // User is logged in - go to main
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MainNav()),
                  );
                } else {
                  // User has seen onboarding but not logged in - go to login
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                }
              }
            });
          }
          return _loadingScreen();
        },
      ),
    );
  }

  Future<Map<String, bool>> _checkAppStatus() async {
    final authLocalDatasource = AuthLocalDatasource();
    final hasSeenOnboarding = await authLocalDatasource.getOnBoarding();
    final hasAccessToken = await authLocalDatasource.hasAccessToken();

    return {
      'hasSeenOnboarding': hasSeenOnboarding,
      'hasAccessToken': hasAccessToken,
    };
  }

  Container _loadingScreen() {
    return Container(
      color: Colors.white,
      child: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return FadeTransition(
              opacity: _fadeAnimation,
              child: ScaleTransition(
                scale: _scaleAnimation,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/Splash-SmartAgro.png',
                      width: 300,
                      height: 300,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
