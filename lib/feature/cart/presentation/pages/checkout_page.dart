import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../order/presentation/bloc/order/order_bloc.dart';
import '../../data/models/request/buy_cart_request_model.dart';
import '../../data/models/request/checkout_cart_request_model.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../core/component/buttons.dart';
import '../../../../core/component/custom_textformfield.dart';
import '../../../../core/component/upload_image.dart';
import '../../../../core/extensions/build_context_ext.dart';
import '../../../../core/style/color/colors_app.dart';
import '../../../../core/style/thypograpy/sedayu_text_style.dart';
import '../../data/models/request/buy_now_request_model.dart';
import '../../data/models/request/checkout_request_model.dart';
import '../bloc/checkout/checkout_bloc.dart';
import '../bloc/notif_cart/notif_cart_bloc.dart';
import '../bloc/order_sumary/order_sumary_bloc.dart';
import '../bloc/submit_checkout/submit_checkout_bloc.dart';
import '../widgets/addres_card.dart';
import '../widgets/order_sumary_card.dart';
import '../widgets/order_sumary_cart_card.dart';
import '../widgets/payment_method_card.dart';

class CheckoutPage extends StatefulWidget {
  final bool? isFromCart;
  final BuyNowRequestModel? buyNowRequest;
  final BuyCartRequestModel? buyCartRequest;
  const CheckoutPage({
    super.key,
    this.buyNowRequest,
    this.buyCartRequest,
    this.isFromCart,
  });

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  final TextEditingController _noteController = TextEditingController();
  int? _selectedPaymentMethod;
  XFile? _imageFile;

  @override
  void initState() {
    super.initState();
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

  @override
  void dispose() {
    _noteController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Checkout')),
      body: BlocBuilder<CheckoutBloc, CheckoutState>(
        builder: (context, state) {
          switch (state) {
            case LoadingCheckout():
              return const Center(child: CircularProgressIndicator());
            case ErrorCheckout(:final message):
              return Center(child: Text(message));
            case CheckoutSuccess(:final address, :final rekening):
              return Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AddressCard(alamatUtama: address.data?.alamatUtama),
                          const SizedBox(height: 12),

                          BlocBuilder<OrderSumaryBloc, OrderSumaryState>(
                            builder: (context, state) {
                              switch (state) {
                                case LoadingOrderSumary():
                                  return const Center(
                                    child: CircularProgressIndicator(),
                                  );
                                case ErrorOrderSumary(:final message):
                                  return Center(child: Text(message));
                                case BuyNowSuccess(:final buyNow):
                                  return OrderSumaryCard(
                                    beliSekarang: buyNow.data?.beliSekarang,
                                  );
                                case BuyCartSuccess(:final buyCart):
                                  return OrderSumaryCartCard(buyCart: buyCart);
                                case _:
                                  return const SizedBox();
                              }
                            },
                          ),
                          const SizedBox(height: 12),

                          _buildNoteSection(),
                          const SizedBox(height: 12),

                          PaymentMethodCard(
                            rekenings: rekening.data?.rekenings,
                            onSelected: (selected) {
                              setState(() {
                                _selectedPaymentMethod = selected;
                              });
                            },
                          ),
                          const SizedBox(height: 12),

                          UploadImage(
                            title: 'Bukti Transfer',
                            subtitle: 'Format: JPG, PNG (Max 5MB)',
                            onImageSelected: (image) {
                              setState(() {
                                _imageFile = image;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  _buildBottomBar(
                    checkoutRequest: CheckoutRequestModel(
                      alamatId: address.data?.alamatUtama?.id,
                      catatan: _noteController.text,
                      rekeningId: _selectedPaymentMethod,
                      produkId: widget.buyNowRequest?.produkId,
                      varianId: widget.buyNowRequest?.varianId,
                      kuantitas: widget.buyNowRequest?.kuantitas,
                      buktiPembayaran: _imageFile,
                    ),
                    checkoutCartRequest: CheckoutCartRequestModel(
                      keranjangId: widget.buyCartRequest?.ids ?? [],
                      alamatId: address.data?.alamatUtama?.id,
                      catatan: _noteController.text,
                      rekeningId: _selectedPaymentMethod,
                      buktiPembayaran: _imageFile,
                    ),
                  ),
                ],
              );
            case _:
              return const SizedBox();
          }
        },
      ),
    );
  }

  Widget _buildNoteSection() {
    return Container(
      decoration: BoxDecoration(
        color: ColorsApp.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(10),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(
                Icons.folder_outlined,
                color: ColorsApp.primary,
                size: 22,
              ),
              const SizedBox(width: 8),
              Text(
                'Catatan',
                style: SedayuTextStyles.bodyLargeBold.copyWith(
                  color: ColorsApp.textPrimary,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              const SizedBox(width: 4),
              Text(
                '(Opsional)',
                style: SedayuTextStyles.bodyLargeMedium.copyWith(
                  color: ColorsApp.textSecondary,
                  fontSize: 13,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          CustomTextFormField(
            hintText: 'Tulis catatan untuk penjual...',
            controller: _noteController,
            maxLines: 3,
          ),
        ],
      ),
    );
  }

  Widget _buildBottomBar({
    CheckoutRequestModel? checkoutRequest,
    CheckoutCartRequestModel? checkoutCartRequest,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: ColorsApp.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(15),
            blurRadius: 8,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: SafeArea(
        top: false,
        child: SizedBox(
          width: double.infinity,
          child: Button.filled(
            onPressed: _imageFile == null
                ? () {}
                : () {
                    _showConfirmationDialog(
                      checkoutRequest: checkoutRequest,
                      checkoutCartRequest: checkoutCartRequest,
                    );
                  },
            label: 'Buat Pesanan',
            height: 50,
            color: _imageFile == null ? ColorsApp.grey : ColorsApp.primary,
            borderRadius: 8,
          ),
        ),
      ),
    );
  }

  void _showConfirmationDialog({
    CheckoutRequestModel? checkoutRequest,
    CheckoutCartRequestModel? checkoutCartRequest,
  }) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        backgroundColor: ColorsApp.white,
        title: Text(
          'Konfirmasi Pesanan',
          style: SedayuTextStyles.headlineSmall.copyWith(
            color: ColorsApp.textPrimary,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        content: Text(
          'Apakah Anda yakin ingin membuat pesanan ini?',
          style: SedayuTextStyles.bodyLargeMedium.copyWith(
            color: ColorsApp.textSecondary,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              'Batal',
              style: SedayuTextStyles.bodyLargeBold.copyWith(
                color: ColorsApp.textSecondary,
              ),
            ),
          ),
          BlocConsumer<SubmitCheckoutBloc, SubmitCheckoutState>(
            listener: (context, state) {
              switch (state) {
                case CheckoutSubmitSuccess():
                  Navigator.pop(context);
                  context.read<NotifCartBloc>().add(
                    const NotifCartEvent.getItemCart(),
                  );
                  context.read<OrderBloc>().add(const OrderEvent.getOrder());
                  _showSuccessDialog();
                case ErrorSubmitCheckout(:final message):
                  context.showAlertError(message: message);
                  context.pop();
                case _:
              }
            },
            builder: (context, state) {
              if (state is LoadingSubmitCheckout) {
                return Button.filled(
                  width: 100,
                  onPressed: () {},
                  label: 'Pesan',
                  height: 45,
                  color: ColorsApp.primary,
                  borderRadius: 8,
                  loading: true,
                );
              }
              return Button.filled(
                width: 100,
                onPressed: () {
                  if (widget.isFromCart == true) {
                    context.read<SubmitCheckoutBloc>().add(
                      SubmitCheckoutEvent.checkoutCart(
                        checkoutCartRequest ?? CheckoutCartRequestModel(),
                      ),
                    );
                  } else {
                    context.read<SubmitCheckoutBloc>().add(
                      SubmitCheckoutEvent.checkoutDetail(
                        checkoutRequest ?? CheckoutRequestModel(),
                      ),
                    );
                  }
                },
                label: 'Pesan',
                height: 45,
                color: ColorsApp.primary,
                borderRadius: 8,
              );
            },
          ),
        ],
      ),
    );
  }

  void _showSuccessDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        backgroundColor: ColorsApp.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: ColorsApp.primary.withAlpha(25),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.check_circle,
                color: ColorsApp.primary,
                size: 60,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Pesanan Berhasil!',
              style: SedayuTextStyles.headlineSmall.copyWith(
                color: ColorsApp.textPrimary,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Pesanan Anda sedang diproses',
              textAlign: TextAlign.center,
              style: SedayuTextStyles.bodyLargeMedium.copyWith(
                color: ColorsApp.textSecondary,
              ),
            ),
          ],
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.pop(context);
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: ColorsApp.primary,
              foregroundColor: ColorsApp.white,
              minimumSize: const Size(double.infinity, 45),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              elevation: 0,
            ),
            child: Text(
              'Kembali ke Beranda',
              style: SedayuTextStyles.bodyLargeBold.copyWith(
                color: ColorsApp.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
