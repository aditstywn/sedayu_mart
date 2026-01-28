import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_agro/core/component/space.dart';
import 'package:smart_agro/core/extensions/build_context_ext.dart';
import 'package:smart_agro/feature/profile/presentation/widgets/address_loading.dart';

import '../../../../core/component/buttons.dart';
import '../../../../core/style/color/colors_app.dart';
import '../../../cart/data/models/request/buy_cart_request_model.dart';
import '../../../cart/data/models/request/buy_now_request_model.dart';
import '../../../cart/presentation/bloc/checkout/checkout_bloc.dart';
import '../../../cart/presentation/bloc/order_sumary/order_sumary_bloc.dart';
import '../../data/models/request/shipping_address_request_model.dart';
import '../../data/models/response/shipping_address_response_model.dart';
import '../bloc/section/section_bloc.dart';
import '../bloc/submit_profile/submit_profile_bloc.dart';
import 'add_shipping_address_page.dart';

class AddressPage extends StatefulWidget {
  final bool? checkout;
  final bool? isFromCart;
  final BuyNowRequestModel? buyNowRequest;
  final BuyCartRequestModel? buyCartRequest;
  const AddressPage({
    super.key,
    this.checkout,
    this.isFromCart,
    this.buyNowRequest,
    this.buyCartRequest,
  });

  @override
  State<AddressPage> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  int? _selectedIndex;
  @override
  void initState() {
    super.initState();
    context.read<SectionBloc>().add(const SectionEvent.shippingAddress());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Alamat Saya')),
      body: BlocListener<SubmitProfileBloc, SubmitProfileState>(
        listener: (context, state) {
          switch (state) {
            case ErrorSubmitProfile(:final message):
              context.showAlertError(message: message);
            case UpdateShippingAddressSuccess(:final message):
              context.read<CheckoutBloc>().add(CheckoutEvent.checkout());
              if (widget.checkout == true) {
                context.read<CheckoutBloc>().add(CheckoutEvent.checkout());
                if (widget.isFromCart == true) {
                  context.read<OrderSumaryBloc>().add(
                    OrderSumaryEvent.buyCart(widget.buyCartRequest!),
                  );
                } else {
                  context.read<OrderSumaryBloc>().add(
                    OrderSumaryEvent.buyNow(widget.buyNowRequest!),
                  );
                }
              }
              context.showAlertSuccess(message: message);

            case DeleteShippingAddressSuccess(:final message):
              context.pop();
              context.showAlertSuccess(message: message);
              context.read<SectionBloc>().add(
                const SectionEvent.shippingAddress(),
              );
            case _:
              break;
          }
        },
        child: BlocConsumer<SectionBloc, SectionState>(
          listener: (context, state) {
            if (state is ShippingAddressSuccess) {
              _selectedIndex = null;
            }
          },
          builder: (context, state) {
            switch (state) {
              case LoadingSection():
                return AddressLoading();
              case ErrorSection(:final message):
                return Center(child: Text('Error: $message'));
              case ShippingAddressSuccess(:final address):
                if (address.data?.alamatPengiriman == null ||
                    address.data?.alamatPengiriman?.isEmpty == true) {
                  return _buildEmptyState();
                }

                return RefreshIndicator(
                  onRefresh: () async {
                    context.read<SectionBloc>().add(
                      const SectionEvent.shippingAddress(),
                    );
                  },
                  child: ListView.builder(
                    padding: const EdgeInsets.all(16),
                    itemCount: address.data?.alamatPengiriman?.length ?? 0,
                    itemBuilder: (context, index) {
                      final item = address.data?.alamatPengiriman?[index];
                      final isActive = _selectedIndex ??= address
                          .data
                          ?.alamatPengiriman
                          ?.indexWhere((addr) => addr.utama == 1);
                      return _buildAddressCard(
                        address: item,
                        isActive: index == isActive,
                        index: index,
                      );
                    },
                  ),
                );
              case _:
                return const SizedBox.shrink();
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          context.push(const AddShippingAddressPage());
        },
        backgroundColor: ColorsApp.primary,
        icon: const Icon(Icons.add, color: Colors.white),
        label: const Text(
          'Tambah Alamat',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.location_off_outlined,
            size: 100,
            color: ColorsApp.textSecondary.withAlpha(128),
          ),
          const SizedBox(height: 16),
          Text(
            'Belum Ada Alamat',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: ColorsApp.textSecondary.withAlpha(179),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Tambahkan alamat pengiriman Anda',
            style: TextStyle(
              fontSize: 14,
              color: ColorsApp.textSecondary.withAlpha(153),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAddressCard({
    AlamatPengiriman? address,
    bool? isActive,
    int? index,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),

      decoration: BoxDecoration(
        color: ColorsApp.white,
        borderRadius: BorderRadius.circular(10),
        border: isActive ?? false
            ? Border.all(color: ColorsApp.primary, width: 2)
            : null,
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
          // Konten alamat
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Nama dan telepon
                Row(
                  children: [
                    const Icon(
                      Icons.person_outline,
                      size: 16,
                      color: ColorsApp.textSecondary,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      address?.namaPenerima ?? '-',
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: ColorsApp.textPrimary,
                      ),
                    ),

                    SpaceWidth(8),
                    if (isActive ?? false)
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: ColorsApp.lightGreen.withAlpha(20),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text(
                          ' Utama',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: ColorsApp.primary,
                          ),
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: 8),

                // Alamat lengkap
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.location_on_outlined,
                      size: 16,
                      color: ColorsApp.textSecondary,
                    ),
                    const SizedBox(width: 6),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${address?.alamat ?? '-'}, ( ${address?.keterangan ?? '-'} )',
                            style: const TextStyle(
                              fontSize: 12,
                              color: ColorsApp.textSecondary,
                              height: 1.4,
                            ),
                          ),
                          SpaceHeight(4),
                          Text(
                            '${address?.kabupaten ?? '-'}, ${address?.provinsi ?? '-'}, ${address?.kodePos ?? '-'}',
                            style: const TextStyle(
                              fontSize: 12,
                              color: ColorsApp.textSecondary,
                              height: 1.4,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SpaceHeight(8),
                Row(
                  children: [
                    const Icon(
                      Icons.phone_outlined,
                      size: 16,
                      color: ColorsApp.textSecondary,
                    ),
                    SpaceWidth(6),
                    Text(
                      address?.nomorTelepon ?? '-',
                      style: const TextStyle(
                        fontSize: 12,
                        color: ColorsApp.textSecondary,
                        height: 1.4,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const Divider(height: 1, color: ColorsApp.borderColor),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              if (!(isActive ?? false))
                TextButton.icon(
                  onPressed: () {
                    setState(() {
                      _selectedIndex = index;
                    });
                    final data = ShippingAddressRequestModel(
                      id: address?.id,
                      namaPenerima: address?.namaPenerima,
                      nomorTelepon: address?.nomorTelepon,
                      alamat: address?.alamat,
                      kabupaten: address?.kabupaten,
                      provinsi: address?.provinsi,
                      kodePos: address?.kodePos,
                      keterangan: address?.keterangan,
                      utama: 1,
                    );
                    context.read<SubmitProfileBloc>().add(
                      SubmitProfileEvent.updateShippingAddress(data),
                    );
                  },
                  icon: const Icon(Icons.check_circle_outline, size: 16),
                  label: const Text(
                    'Jadikan Utama',
                    style: TextStyle(fontSize: 12),
                  ),
                  style: TextButton.styleFrom(
                    foregroundColor: ColorsApp.primary,
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                  ),
                ),
              TextButton.icon(
                onPressed: () {
                  context.push(
                    AddShippingAddressPage(
                      initialAddress: ShippingAddressRequestModel(
                        id: address?.id,
                        namaPenerima: address?.namaPenerima,
                        nomorTelepon: address?.nomorTelepon,
                        alamat: address?.alamat,
                        kabupaten: address?.kabupaten,
                        provinsi: address?.provinsi,
                        kodePos: address?.kodePos,
                        keterangan: address?.keterangan,
                        utama: address?.utama,
                      ),
                    ),
                  );
                },
                icon: const Icon(Icons.edit_outlined, size: 16),
                label: const Text('Edit', style: TextStyle(fontSize: 12)),
                style: TextButton.styleFrom(
                  foregroundColor: ColorsApp.primary,
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                ),
              ),
              TextButton.icon(
                onPressed: () {
                  _deleteAddress(idAddress: address?.id);
                },
                icon: const Icon(Icons.delete_outline, size: 16),
                label: const Text('Hapus', style: TextStyle(fontSize: 12)),
                style: TextButton.styleFrom(
                  foregroundColor: ColorsApp.error,
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                ),
              ),
              SpaceWidth(8),
            ],
          ),
        ],
      ),
    );
  }

  void _deleteAddress({int? idAddress}) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: ColorsApp.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: const Text(
          'Hapus Alamat',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: ColorsApp.textPrimary,
          ),
        ),
        content: const Text(
          'Apakah Anda yakin ingin menghapus alamat ini?',
          style: TextStyle(color: ColorsApp.textSecondary),
        ),
        actions: [
          Button.outlined(
            height: 35,
            width: 90,
            onPressed: () {
              context.pop();
            },
            label: 'Batal',
            textColor: ColorsApp.textSecondary,
            borderColor: ColorsApp.borderColor,
            fontSize: 14,
          ),
          BlocBuilder<SubmitProfileBloc, SubmitProfileState>(
            builder: (context, state) {
              if (state is LoadingSubmitProfile) {
                return Button.filled(
                  height: 35,
                  width: 90,
                  onPressed: () {},
                  label: 'Hapus',
                  color: ColorsApp.error,
                  textColor: ColorsApp.white,
                  fontSize: 14,
                  loading: true,
                );
              }
              return Button.filled(
                height: 35,
                width: 90,
                onPressed: () {
                  context.read<SubmitProfileBloc>().add(
                    SubmitProfileEvent.deleteShippingAddress(idAddress ?? 0),
                  );
                },
                label: 'Hapus',
                color: ColorsApp.error,
                textColor: ColorsApp.white,
                fontSize: 14,
              );
            },
          ),
        ],
      ),
    );
  }

  // void _setAsDefault(int index) {
  //   setState(() {
  //     // Set semua alamat menjadi bukan default
  //     for (var address in addresses) {
  //       address['isDefault'] = false;
  //     }
  //     // Set alamat yang dipilih sebagai default
  //     addresses[index]['isDefault'] = true;
  //   });

  //   ScaffoldMessenger.of(context).showSnackBar(
  //     const SnackBar(
  //       content: Text('Alamat berhasil dijadikan alamat utama'),
  //       backgroundColor: ColorsApp.success,
  //       behavior: SnackBarBehavior.floating,
  //     ),
  //   );
  // }
}
