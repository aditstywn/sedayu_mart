import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/style/color/colors_app.dart';
import '../cart/presentation/bloc/notif_cart/notif_cart_bloc.dart';
import '../home/presentation/bloc/product/product_bloc.dart';
import '../home/presentation/pages/home_page.dart';
import '../order/presentation/bloc/order/order_bloc.dart';
import '../order/presentation/pages/order_page.dart';
import '../profile/presentation/bloc/profile/profile_bloc.dart';
import '../profile/presentation/pages/profile_page.dart';

class MainNav extends StatefulWidget {
  const MainNav({super.key});

  @override
  State<MainNav> createState() => _MainNavState();
}

class _MainNavState extends State<MainNav> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    // const CartPage(),
    const OrderPage(),
    const ProfilePage(),
  ];

  void _onItemTapped(int index) {
    _selectedIndex = index;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    context.read<ProductBloc>().add(const ProductEvent.getProduct());
    context.read<ProfileBloc>().add(const ProfileEvent.profile());
    context.read<NotifCartBloc>().add(const NotifCartEvent.getItemCart());
    context.read<OrderBloc>().add(const OrderEvent.getOrder());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _selectedIndex, children: _pages),
      bottomNavigationBar: SafeArea(
        top: false,
        bottom: false,
        child: Container(
          decoration: BoxDecoration(
            color: ColorsApp.white,
            boxShadow: [
              BoxShadow(
                color: ColorsApp.grey.withAlpha(50),
                blurRadius: 10,
                offset: const Offset(0, -2),
              ),
            ],
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
          ),
          child: Theme(
            data: Theme.of(context).copyWith(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              splashFactory: NoSplash.splashFactory,
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
              child: BottomNavigationBar(
                onTap: _onItemTapped,
                currentIndex: _selectedIndex,
                backgroundColor: ColorsApp.white,
                showUnselectedLabels: true,
                showSelectedLabels: true,
                selectedItemColor: ColorsApp.primary,
                unselectedItemColor: ColorsApp.grey,
                selectedLabelStyle: const TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                ),
                unselectedLabelStyle: const TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                ),
                type: BottomNavigationBarType.fixed,
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                      color: _selectedIndex == 0
                          ? ColorsApp.primary
                          : ColorsApp.grey,
                      size: 23,
                    ),
                    label: 'Beranda',
                  ),

                  // BottomNavigationBarItem(
                  //   icon: Icon(
                  //     Icons.shopping_cart_outlined,
                  //     color: _selectedIndex == 1
                  //         ? ColorsApp.primary
                  //         : ColorsApp.grey,
                  //     size: 23,
                  //   ),
                  //   label: 'Keranjang',
                  // ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.list_alt_outlined,
                      color: _selectedIndex == 1
                          ? ColorsApp.primary
                          : ColorsApp.grey,
                      size: 23,
                    ),
                    label: 'Pesanan',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.person,
                      color: _selectedIndex == 2
                          ? ColorsApp.primary
                          : ColorsApp.grey,
                      size: 23,
                    ),
                    label: 'Profile',
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
