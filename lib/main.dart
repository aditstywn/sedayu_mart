import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'core/style/theme/sedayu_theme.dart';
import 'feature/auth/data/datasource/auth_remote_datasource.dart';
import 'feature/auth/presentation/bloc/auth_bloc.dart';
import 'feature/cart/data/datasource/cart_remote_datasource.dart';
import 'feature/cart/presentation/bloc/cart/cart_bloc.dart';
import 'feature/cart/presentation/bloc/checkout/checkout_bloc.dart';
import 'feature/cart/presentation/bloc/notif_cart/notif_cart_bloc.dart';
import 'feature/cart/presentation/bloc/order_sumary/order_sumary_bloc.dart';
import 'feature/cart/presentation/bloc/submit_cart/submit_cart_bloc.dart';
import 'feature/cart/presentation/bloc/submit_checkout/submit_checkout_bloc.dart';
import 'feature/cart/presentation/provider/cart_provider.dart';
import 'feature/home/data/datasource/product_remote_datasource.dart';
import 'feature/home/presentation/bloc/detail_product/detail_product_bloc.dart';
import 'feature/home/presentation/bloc/product/product_bloc.dart';
import 'feature/home/presentation/bloc/submit_product/submit_product_bloc.dart';
import 'feature/main/splash_screen.dart';
import 'feature/order/data/datasource/order_remote_datasource.dart';
import 'feature/order/presentation/bloc/detail_order/detail_order_bloc.dart';
import 'feature/order/presentation/bloc/order/order_bloc.dart';
import 'feature/profile/data/datasource/profile_remote_datasource.dart';
import 'feature/profile/presentation/bloc/city/city_bloc.dart';
import 'feature/profile/presentation/bloc/profile/profile_bloc.dart';
import 'feature/profile/presentation/bloc/section/section_bloc.dart';
import 'feature/profile/presentation/bloc/submit_profile/submit_profile_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => AuthRemoteDatasource()),
        RepositoryProvider(create: (context) => ProductRemoteDatasource()),
        RepositoryProvider(create: (context) => ProfileRemoteDatasource()),
        RepositoryProvider(create: (context) => CartRemoteDatasource()),
        RepositoryProvider(create: (context) => OrderRemoteDatasource()),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AuthBloc(context.read<AuthRemoteDatasource>()),
          ),
          BlocProvider(
            create: (context) =>
                ProductBloc(context.read<ProductRemoteDatasource>()),
          ),
          BlocProvider(
            create: (context) =>
                DetailProductBloc(context.read<ProductRemoteDatasource>()),
          ),
          BlocProvider(
            create: (context) =>
                SubmitProductBloc(context.read<ProductRemoteDatasource>()),
          ),
          BlocProvider(
            create: (context) => CartBloc(context.read<CartRemoteDatasource>()),
          ),
          BlocProvider(
            create: (context) =>
                SubmitCartBloc(context.read<CartRemoteDatasource>()),
          ),
          BlocProvider(
            create: (context) =>
                NotifCartBloc(context.read<CartRemoteDatasource>()),
          ),
          BlocProvider(
            create: (context) =>
                CheckoutBloc(context.read<CartRemoteDatasource>()),
          ),
          BlocProvider(
            create: (context) =>
                SubmitCheckoutBloc(context.read<CartRemoteDatasource>()),
          ),
          BlocProvider(
            create: (context) =>
                OrderSumaryBloc(context.read<CartRemoteDatasource>()),
          ),
          BlocProvider(
            create: (context) =>
                OrderBloc(context.read<OrderRemoteDatasource>()),
          ),
          BlocProvider(
            create: (context) =>
                DetailOrderBloc(context.read<OrderRemoteDatasource>()),
          ),
          BlocProvider(
            create: (context) =>
                ProfileBloc(context.read<ProfileRemoteDatasource>()),
          ),
          BlocProvider(
            create: (context) =>
                SectionBloc(context.read<ProfileRemoteDatasource>()),
          ),
          BlocProvider(
            create: (context) =>
                SubmitProfileBloc(context.read<ProfileRemoteDatasource>()),
          ),
          BlocProvider(
            create: (context) =>
                CityBloc(context.read<ProfileRemoteDatasource>()),
          ),
        ],
        child: MultiProvider(
          providers: [ChangeNotifierProvider(create: (_) => CartProvider())],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Smart Agro',
            theme: SedayuTheme.lightTheme,
            themeMode: ThemeMode.system,
            home: SplashScreen(),
          ),
        ),
      ),
    );
  }
}
