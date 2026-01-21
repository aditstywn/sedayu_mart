import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_agro/feature/order/presentation/widgets/order_loading.dart';

import '../../../../core/style/color/colors_app.dart';
import '../../../../core/style/thypograpy/sedayu_text_style.dart';
import '../../data/models/response/order_response_model.dart';
import '../bloc/order/order_bloc.dart';
import '../widgets/order_card.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  Set<String> expandedOrders = {};
  String selectedStatus = 'Semua';

  final List<String> statusTabs = [
    'Semua',
    'Diproses',
    'Dikirim',
    'Selesai',
    'Dibatalkan',
  ];

  // Dummy data pesanan
  // final List<Map<String, dynamic>> orders = [
  //   {
  //     'orderNumber': 'ORD-2025-001',
  //     'date': '25 Des 2025',
  //     'status': 'Dikirim',
  //     'products': [
  //       {'name': 'Pupuk Organik', 'qty': 2, 'price': 45000},
  //       {'name': 'Bibit Cabai', 'qty': 1, 'price': 35000},
  //       {'name': 'Pupuk NPK', 'qty': 3, 'price': 55000},
  //     ],
  //     'totalPrice': 290000,
  //   },
  //   {
  //     'orderNumber': 'ORD-2025-002',
  //     'date': '24 Des 2025',
  //     'status': 'Diproses',
  //     'products': [
  //       {'name': 'Bibit Tomat', 'qty': 5, 'price': 28000},
  //     ],
  //     'totalPrice': 140000,
  //   },
  //   {
  //     'orderNumber': 'ORD-2025-003',
  //     'date': '23 Des 2025',
  //     'status': 'Selesai',
  //     'products': [
  //       {'name': 'Pupuk Organik', 'qty': 1, 'price': 45000},
  //       {'name': 'Bibit Cabai', 'qty': 2, 'price': 35000},
  //     ],
  //     'totalPrice': 115000,
  //   },
  //   {
  //     'orderNumber': 'ORD-2025-004',
  //     'date': '22 Des 2025',
  //     'status': 'Dibatalkan',
  //     'products': [
  //       {'name': 'Pupuk NPK', 'qty': 1, 'price': 55000},
  //     ],
  //     'totalPrice': 55000,
  //   },
  // ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: statusTabs.length, vsync: this);
    _tabController.addListener(() {
      if (!_tabController.indexIsChanging) {
        setState(() {
          selectedStatus = statusTabs[_tabController.index];
        });
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List<DataPesanan> orders = [];

  List<DataPesanan> get filteredOrders {
    if (selectedStatus == 'Semua') {
      return orders;
    }
    return orders.where((order) => order.status == selectedStatus).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pesanan ')),
      body: Column(
        children: [
          // TabBar
          Container(
            color: ColorsApp.white,
            child: TabBar(
              controller: _tabController,
              isScrollable: true,
              tabAlignment: TabAlignment.start,
              dividerHeight: 1,
              dividerColor: ColorsApp.grey,
              labelColor: ColorsApp.primary,
              unselectedLabelColor: ColorsApp.grey,
              padding: EdgeInsets.zero,
              labelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
              unselectedLabelStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(color: ColorsApp.primary, width: 2),
              ),
              indicatorSize: TabBarIndicatorSize.tab,
              overlayColor: WidgetStateProperty.all(Colors.transparent),
              splashFactory: NoSplash.splashFactory,
              tabs: statusTabs
                  .map(
                    (status) => Tab(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text(status),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
          // List Orders
          Expanded(
            child: BlocConsumer<OrderBloc, OrderState>(
              listener: (context, state) {
                switch (state) {
                  case OrderSuccess(:final order):
                    setState(() {
                      orders = order.data ?? [];
                    });
                  case _:
                }
              },
              builder: (context, state) {
                if (filteredOrders.isEmpty) {
                  return RefreshIndicator(
                    onRefresh: () async {
                      context.read<OrderBloc>().add(
                        const OrderEvent.getOrder(),
                      );
                    },
                    child: _buildEmptyState(),
                  );
                }
                switch (state) {
                  case LoadingOrder():
                    return const OrderLoading();
                  case OrderError(:final message):
                    return Center(
                      child: Text(
                        message,
                        style: SedayuTextStyles.bodyLargeMedium.copyWith(
                          color: ColorsApp.error,
                        ),
                      ),
                    );
                  case OrderSuccess():
                    return RefreshIndicator(
                      onRefresh: () async {
                        context.read<OrderBloc>().add(
                          const OrderEvent.getOrder(),
                        );
                      },
                      child: ListView.builder(
                        padding: const EdgeInsets.all(20),
                        itemCount: filteredOrders.length,
                        itemBuilder: (context, index) {
                          return OrderCard(order: filteredOrders[index]);
                        },
                      ),
                    );
                  case _:
                    return const SizedBox();
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyState() {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.2),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: ColorsApp.primary.withAlpha(25),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.shopping_bag_outlined,
                size: 60,
                color: ColorsApp.primary,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              selectedStatus == 'Semua'
                  ? 'Belum Ada Pesanan'
                  : 'Belum Ada Pesanan $selectedStatus',
              style: SedayuTextStyles.titleMedium.copyWith(
                color: ColorsApp.textPrimary,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              selectedStatus == 'Semua'
                  ? 'Mulai belanja untuk membuat pesanan'
                  : 'Tidak ada pesanan dengan status $selectedStatus',
              style: SedayuTextStyles.bodyLargeMedium.copyWith(
                color: ColorsApp.textSecondary,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ],
    );
  }
}
