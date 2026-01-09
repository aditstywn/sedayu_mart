import 'package:flutter/material.dart';

import '../../core/component/buttons.dart';
import '../../core/style/color/colors_app.dart';
import '../auth/data/datasource/auth_local_datasource.dart';
import '../auth/presentation/pages/login_page.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<OnboardingData> _pages = [
    OnboardingData(
      title: 'Marketplace\nHasil Tani',
      description:
          'Jual beli hasil perkebunan dan pertanian langsung dari petani ke konsumen tanpa perantara',
      icon: Icons.storefront,
      color: ColorsApp.primary,
    ),
    OnboardingData(
      title: 'Hasil Panen\nSegar & Terjamin',
      description:
          'Produk perkebunan segar dengan kualitas terbaik langsung dari kebun ke tangan Anda',
      icon: Icons.agriculture,
      color: const Color(0xFF66BB6A),
    ),
    OnboardingData(
      title: 'Transaksi\nMudah & Aman',
      description:
          'Belanja hasil tani dengan sistem pembayaran yang aman dan proses yang mudah',
      icon: Icons.shopping_cart,
      color: ColorsApp.lightGreen,
    ),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorsApp.white,
        child: SafeArea(
          child: Column(
            children: [
              // Skip button
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: TextButton(
                    onPressed: _skipToLogin,
                    child: const Text(
                      'Lewati',
                      style: TextStyle(
                        fontSize: 16,
                        color: ColorsApp.textSecondary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),

              // PageView
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      _currentPage = index;
                    });
                  },
                  itemCount: _pages.length,
                  itemBuilder: (context, index) {
                    return _buildOnboardingPage(_pages[index]);
                  },
                ),
              ),

              // Page indicators
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  _pages.length,
                  (index) => _buildIndicator(index == _currentPage),
                ),
              ),
              const SizedBox(height: 40),

              // Button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: _currentPage == _pages.length - 1
                    ? _buildGetStartedButton()
                    : _buildNextButton(),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOnboardingPage(OnboardingData data) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Icon dengan gradient container
          Container(
            width: 180,
            height: 180,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [data.color, data.color.withAlpha(153)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: data.color.withAlpha(77),
                  blurRadius: 30,
                  spreadRadius: 5,
                ),
              ],
            ),
            child: Icon(data.icon, size: 100, color: Colors.white),
          ),
          const SizedBox(height: 60),

          // Title
          Text(
            data.title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: ColorsApp.textPrimary,
              height: 1.3,
            ),
          ),
          const SizedBox(height: 24),

          // Description
          Text(
            data.description,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              color: ColorsApp.textSecondary,
              height: 1.6,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIndicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.symmetric(horizontal: 4),
      height: 8,
      width: isActive ? 32 : 8,
      decoration: BoxDecoration(
        color: isActive ? ColorsApp.primary : ColorsApp.borderColor,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }

  Widget _buildNextButton() {
    return Button.filled(
      onPressed: () {
        _pageController.nextPage(
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeInOut,
        );
      },
      label: 'Selanjutnya',
      color: ColorsApp.primary,
      borderRadius: 8,
    );
  }

  Widget _buildGetStartedButton() {
    return Button.filled(
      onPressed: () {
        _skipToLogin();
      },
      label: 'Mulai Sekarang',
      color: ColorsApp.primary,
      borderRadius: 8,
    );
  }

  void _skipToLogin() async {
    // Save that user has seen onboarding
    await AuthLocalDatasource().onBoarding(true);

    if (mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
    }
  }
}

/// Model data untuk onboarding
class OnboardingData {
  final String title;
  final String description;
  final IconData icon;
  final Color color;

  OnboardingData({
    required this.title,
    required this.description,
    required this.icon,
    required this.color,
  });
}
