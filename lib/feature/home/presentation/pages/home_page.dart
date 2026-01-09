import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../../core/component/space.dart';
import '../../../../core/config/url.dart';
import '../../../../core/extensions/build_context_ext.dart';
import '../../../../core/style/color/colors_app.dart';
import '../../../../core/style/thypograpy/sedayu_text_style.dart';
import '../../../auth/data/datasource/auth_local_datasource.dart';
import '../../../cart/presentation/bloc/notif_cart/notif_cart_bloc.dart';
import '../../../cart/presentation/pages/cart_page.dart';
import '../../../profile/data/models/response/profile_response_model.dart';
import '../../../profile/presentation/bloc/profile/profile_bloc.dart';
import '../../data/models/response/product_response_model.dart';
import '../bloc/product/product_bloc.dart';
import '../widgets/product_card.dart';
import '../widgets/product_loading.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentBannerIndex = 0;
  final PageController _bannerPageController = PageController();
  final TextEditingController _searchController = TextEditingController();
  Timer? _bannerTimer;
  List<Produk> _product = [];
  List<Produk> _filteredProduct = [];
  ProfilProfil? user;

  Future<void> _getCurrentLocation() async {
    final status = await Permission.location.status;

    if (status.isPermanentlyDenied) {
      // User sudah pilih "jangan tanya lagi"
      if (mounted) {
        context.showAlertError(
          message: 'Berikan izin akses lokasi pada aplikasi ini',
        );
      }
      return;
    }

    if (status.isDenied || status.isRestricted) {
      // Minta izin dulu, biar modal OS yang muncul
      final result = await Permission.location.request();
      if (!result.isGranted && mounted) {
        context.showAlertError(
          message: 'Berikan izin akses lokasi pada aplikasi ini',
        );
        return;
      }
    }

    if (!await Geolocator.isLocationServiceEnabled()) {
      await Geolocator.openLocationSettings();
      if (mounted) {
        context.showAlertError(
          message: 'Aktifkan layanan lokasi pada perangkat Anda',
        );
      }
      return;
    }
  }

  @override
  void initState() {
    super.initState();
    _startBannerAutoScroll();
    _getCurrentLocation();
    getUser();
  }

  void getUser() async {
    final user = await AuthLocalDatasource().getUser();
    if (user != null) {
      setState(() {
        this.user = user;
      });
    }
  }

  void _onSearchProductChanged(String query) {
    setState(() {
      if (query.isEmpty) {
        _filteredProduct = _product;
      } else {
        _filteredProduct = _product
            .where(
              (prd) =>
                  (prd.nama?.toLowerCase().contains(query.toLowerCase()) ??
                  false),
            )
            .toList();
      }
    });
  }

  void _startBannerAutoScroll() {
    _bannerTimer = Timer.periodic(const Duration(seconds: 3), (timer) {
      if (currentBannerIndex < 2) {
        currentBannerIndex++;
      } else {
        currentBannerIndex = 0;
      }
      _bannerPageController.animateToPage(
        currentBannerIndex,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _bannerTimer?.cancel();
    _bannerPageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async {
            context.read<ProductBloc>().add(const ProductEvent.getProduct());
          },
          child: ListView(
            children: [
              _buildHeader(),
              const SizedBox(height: 20),

              _buildSearchBar(),
              const SizedBox(height: 24),

              _buildPromoBanner(),
              const SizedBox(height: 24),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Semua Produk',
                      style: SedayuTextStyles.titleLarge.copyWith(
                        color: ColorsApp.textPrimary,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SpaceHeight(8),
                    Text(
                      'Produk terbaik dari hasil kebun lokal untuk Anda',
                      style: SedayuTextStyles.bodyLargeMedium.copyWith(
                        color: ColorsApp.textSecondary,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),

              BlocConsumer<ProductBloc, ProductState>(
                listener: (context, state) {
                  switch (state) {
                    case GetProductSuccess(:final product):
                      setState(() {
                        _product = product.data?.produk ?? [];
                        _filteredProduct = product.data?.produk ?? [];
                      });
                    case _:
                  }
                },
                builder: (context, state) {
                  switch (state) {
                    case LoadingProduct():
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 0.75,
                                crossAxisSpacing: 14,
                                mainAxisSpacing: 14,
                              ),
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return ProductLoading();
                          },
                        ),
                      );
                    case ErrorProduct(:final message):
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Center(
                          child: Text(
                            message,
                            style: SedayuTextStyles.bodyLargeMedium.copyWith(
                              color: ColorsApp.error,
                            ),
                          ),
                        ),
                      );
                    case GetProductSuccess():
                      if (_filteredProduct.isEmpty) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 40,
                          ),
                          child: Center(
                            child: Column(
                              children: [
                                Icon(
                                  Icons.inventory_2_outlined,
                                  size: 80,
                                  color: ColorsApp.textSecondary.withAlpha(128),
                                ),
                                const SizedBox(height: 16),
                                Text(
                                  'Tidak ada produk',
                                  style: SedayuTextStyles.titleMedium.copyWith(
                                    color: ColorsApp.textSecondary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }

                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 0.75,
                                crossAxisSpacing: 14,
                                mainAxisSpacing: 14,
                              ),
                          itemCount: _filteredProduct.length,
                          itemBuilder: (context, index) {
                            return ProductCard(
                              product: _filteredProduct[index],
                            );
                          },
                        ),
                      );
                    case _:
                      return const SizedBox.shrink();
                  }
                },
              ),
              SpaceHeight(20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return BlocListener<ProfileBloc, ProfileState>(
      listener: (context, state) {
        if (state is ProfileSuccess) {
          setState(() {
            user = ProfilProfil(
              nama: state.profile.data?.profil?.profil?.nama,
              email: state.profile.data?.profil?.profil?.email,
              avatar: state.profile.data?.profil?.profil?.avatar,
            );
          });
        }
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        width: 56,
                        height: 56,
                        decoration: BoxDecoration(
                          color: ColorsApp.primary.withAlpha(200),
                          shape: BoxShape.circle,
                        ),
                        child: ClipOval(
                          child: CachedNetworkImage(
                            imageUrl: '${Url.baseUrl}/${user?.avatar ?? ''}',
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: double.infinity,
                            placeholder: (context, url) => Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    ColorsApp.lightGreen.withAlpha(20),
                                    ColorsApp.accentGreen.withAlpha(10),
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                              ),
                              child: Center(
                                child: CircularProgressIndicator(
                                  color: ColorsApp.primary,
                                  strokeWidth: 2,
                                ),
                              ),
                            ),
                            errorWidget: (context, url, error) => Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    ColorsApp.lightGreen.withAlpha(20),
                                    ColorsApp.accentGreen.withAlpha(10),
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.person,
                                  color: ColorsApp.white,
                                  size: 40,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Halo!',
                              style: SedayuTextStyles.bodyLargeRegular.copyWith(
                                color: ColorsApp.textSecondary,
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(height: 2),
                            Text(
                              user?.nama ?? '-',
                              style: SedayuTextStyles.titleMedium.copyWith(
                                color: ColorsApp.textPrimary,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // Cart Icon with Badge
                InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  onTap: () => context.push(CartPage()),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Icon(
                        Icons.shopping_cart_outlined,
                        color: ColorsApp.primary,
                        size: 28,
                      ),
                      BlocSelector<NotifCartBloc, NotifCartState, int>(
                        selector: (state) => state.maybeWhen(
                          getItemCartSuccess: (cart) => cart.data?.length ?? 0,
                          orElse: () => 0,
                        ),
                        builder: (context, length) {
                          if (length == 0) return const SizedBox();

                          return Positioned(
                            right: -3,
                            top: -8,
                            child: Container(
                              padding: const EdgeInsets.all(4),
                              decoration: const BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle,
                              ),
                              constraints: const BoxConstraints(
                                minWidth: 18,
                                minHeight: 18,
                              ),
                              child: Text(
                                length > 99 ? '99+' : length.toString(),
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
          color: ColorsApp.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: TextField(
          controller: _searchController,
          onChanged: _onSearchProductChanged,
          decoration: InputDecoration(
            hintText: 'Cari produk favoritmu',
            hintStyle: SedayuTextStyles.bodyLargeMedium.copyWith(
              color: ColorsApp.textSecondary,
            ),
            prefixIcon: const Icon(
              Icons.search,
              color: ColorsApp.textSecondary,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(
                color: ColorsApp.borderColor,
                width: 1.5,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(
                color: ColorsApp.borderColor,
                width: 1.5,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(
                color: ColorsApp.primary,
                width: 1.5,
              ),
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 16,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPromoBanner() {
    final List<Map<String, dynamic>> banners = [
      {
        'title': 'Sayuran\nSegar',
        'subtitle': 'Dapatkan diskon',
        'discount': 'Hemat hingga 30%',
        'emoji1': '🥬',
        'emoji2': '🥕',
        'bgColor': ColorsApp.lightGreen.withAlpha(51),
      },
      {
        'title': 'Buah\nSegar',
        'subtitle': 'Promo spesial',
        'discount': 'Diskon 25%',
        'emoji1': '🍎',
        'emoji2': '🍌',
        'bgColor': ColorsApp.accentGreen.withAlpha(38),
      },
      {
        'title': 'Hasil Pertanian\nBerkualitas',
        'subtitle': 'Penawaran terbatas',
        'discount': 'Cashback 20%',
        'emoji1': '🌽',
        'emoji2': '🥜',
        'bgColor': ColorsApp.primary.withAlpha(38),
      },
    ];

    return Column(
      children: [
        SizedBox(
          height: 160,
          child: PageView.builder(
            controller: _bannerPageController,
            onPageChanged: (index) {
              setState(() {
                currentBannerIndex = index;
              });
            },
            itemCount: banners.length,
            itemBuilder: (context, index) {
              final banner = banners[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: banner['bgColor'] as Color,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: ColorsApp.primary.withAlpha(38),
                      width: 1,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        right: -20,
                        bottom: -20,
                        child: Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            color: ColorsApp.primary.withAlpha(20),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 40,
                        top: -30,
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: ColorsApp.accentGreen.withAlpha(26),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 6,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    banner['subtitle'] as String,
                                    style: SedayuTextStyles.bodyLargeMedium
                                        .copyWith(
                                          color: ColorsApp.textSecondary,
                                          fontSize: 13,
                                        ),
                                  ),
                                  const SizedBox(height: 6),
                                  Text(
                                    banner['title'] as String,
                                    style: SedayuTextStyles.headlineSmall
                                        .copyWith(
                                          color: ColorsApp.textPrimary,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22,
                                          height: 1.2,
                                        ),
                                  ),
                                ],
                              ),
                            ),

                            Expanded(
                              flex: 4,
                              child: Stack(
                                children: [
                                  Positioned(
                                    right: 0,
                                    bottom: 10,
                                    child: Container(
                                      width: 70,
                                      height: 90,
                                      decoration: BoxDecoration(
                                        color: ColorsApp.white.withAlpha(153),
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      child: Center(
                                        child: Text(
                                          banner['emoji1'] as String,
                                          style: const TextStyle(fontSize: 50),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 40,
                                    top: 20,
                                    child: Container(
                                      width: 55,
                                      height: 70,
                                      decoration: BoxDecoration(
                                        color: ColorsApp.white.withAlpha(128),
                                        borderRadius: BorderRadius.circular(14),
                                      ),
                                      child: Center(
                                        child: Text(
                                          banner['emoji2'] as String,
                                          style: const TextStyle(fontSize: 35),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
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
          ),
        ),
        const SizedBox(height: 12),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            3,
            (index) => AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: const EdgeInsets.symmetric(horizontal: 4),
              width: currentBannerIndex == index ? 24 : 8,
              height: 8,
              decoration: BoxDecoration(
                color: currentBannerIndex == index
                    ? ColorsApp.primary
                    : ColorsApp.borderColor,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
        ),
      ],
    );
  }

  // Widget _buildCategories() {
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       Padding(
  //         padding: const EdgeInsets.symmetric(horizontal: 20),
  //         child: Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //           children: [
  //             Text(
  //               'Kategori Produk',
  //               style: SedayuTextStyles.titleLarge.copyWith(
  //                 color: ColorsApp.textPrimary,
  //                 fontWeight: FontWeight.bold,
  //                 fontSize: 20,
  //               ),
  //             ),
  //             Text(
  //               'Lihat Semua',
  //               style: SedayuTextStyles.bodyLargeMedium.copyWith(
  //                 color: ColorsApp.primary,
  //                 fontWeight: FontWeight.w600,
  //                 fontSize: 13,
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //       const SizedBox(height: 16),
  //       SizedBox(
  //         height: 40,
  //         child: ListView.builder(
  //           scrollDirection: Axis.horizontal,
  //           padding: const EdgeInsets.symmetric(horizontal: 20),
  //           itemCount: categories.length,
  //           itemBuilder: (context, index) {
  //             final category = categories[index];
  //             final isSelected = selectedCategory == category;

  //             final categoryIcons = {
  //               'Semua': Icons.grid_view_rounded,
  //               'Hasil Pertanian': Icons.agriculture_outlined,
  //               'Sayuran': Icons.eco_outlined,
  //               'Bumbu': Icons.grass_outlined,
  //               'Protein': Icons.egg_outlined,
  //               'Buah': Icons.apple_outlined,
  //               'Kebutuhan Pokok': Icons.shopping_basket_outlined,
  //             };

  //             return Padding(
  //               padding: const EdgeInsets.only(right: 10),
  //               child: GestureDetector(
  //                 onTap: () {
  //                   _filterProducts(category);
  //                 },
  //                 child: AnimatedContainer(
  //                   duration: const Duration(milliseconds: 200),
  //                   padding: const EdgeInsets.all(10),
  //                   decoration: BoxDecoration(
  //                     gradient: isSelected
  //                         ? const LinearGradient(
  //                             colors: [ColorsApp.primary, ColorsApp.lightGreen],
  //                           )
  //                         : null,
  //                     color: isSelected ? null : ColorsApp.white,
  //                     borderRadius: BorderRadius.circular(8),
  //                     border: Border.all(
  //                       color: isSelected
  //                           ? ColorsApp.primary
  //                           : ColorsApp.borderColor,
  //                       width: isSelected ? 0 : 1.5,
  //                     ),
  //                   ),
  //                   child: Row(
  //                     mainAxisSize: MainAxisSize.min,
  //                     children: [
  //                       Icon(
  //                         categoryIcons[category] ?? Icons.category,
  //                         color: isSelected
  //                             ? ColorsApp.white
  //                             : ColorsApp.textPrimary,
  //                         size: 18,
  //                       ),
  //                       const SizedBox(width: 6),
  //                       Text(
  //                         category,
  //                         style: SedayuTextStyles.bodyLargeBold.copyWith(
  //                           color: isSelected
  //                               ? ColorsApp.white
  //                               : ColorsApp.textPrimary,
  //                           fontWeight: FontWeight.w600,
  //                           fontSize: 13,
  //                         ),
  //                       ),
  //                     ],
  //                   ),
  //                 ),
  //               ),
  //             );
  //           },
  //         ),
  //       ),
  //     ],
  //   );
  // }
}
