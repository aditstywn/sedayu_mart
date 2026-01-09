import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sedayu_mart/core/component/space.dart';
import 'package:intl/intl.dart';
import '../../../../core/component/buttons.dart';
import '../../../../core/config/url.dart';
import '../../../../core/style/color/colors_app.dart';
import '../../../../core/style/thypograpy/sedayu_text_style.dart';
import '../../data/models/response/detail_order_response_model.dart';
import '../bloc/detail_order/detail_order_bloc.dart';

class DetailOrderPage extends StatefulWidget {
  final int? orderId;

  const DetailOrderPage({super.key, this.orderId});

  @override
  State<DetailOrderPage> createState() => _DetailOrderPageState();
}

class _DetailOrderPageState extends State<DetailOrderPage> {
  String? status;
  @override
  void initState() {
    super.initState();
    context.read<DetailOrderBloc>().add(
      DetailOrderEvent.detailOrder(widget.orderId ?? 0),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail Pesanan')),
      body: BlocConsumer<DetailOrderBloc, DetailOrderState>(
        listener: (context, state) {
          switch (state) {
            case DetailOrderSuccess(:final detail):
              setState(() {
                status = detail.data?.status;
              });
            case _:
          }
        },
        builder: (context, state) {
          switch (state) {
            case LoadingDetailOrder():
              return const Center(child: CircularProgressIndicator());

            case ErrorDetailOrder(:final message):
              return Center(child: Text('Error: $message'));
            case DetailOrderSuccess(:final detail):
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SpaceHeight(18),

                    _buildStatusHeader(status: detail.data?.status),

                    const SizedBox(height: 12),

                    _buildOrderInfo(
                      orderNumber: detail.data?.nomorPesanan,
                      date: detail.data?.pesananDibuatPada,
                    ),

                    const SizedBox(height: 12),

                    if (detail.data?.status == 'Dikirim' ||
                        detail.data?.status == 'Selesai')
                      _buildShippingInfo(),

                    if (detail.data?.status == 'Dikirim' ||
                        detail.data?.status == 'Selesai')
                      const SizedBox(height: 12),

                    _buildRecipientInfo(recipient: detail.data?.dataPenerima),

                    const SizedBox(height: 12),

                    _buildProductList(items: detail.data?.items),

                    const SizedBox(height: 12),

                    _buildPaymentSummary(
                      subtotal: detail.data?.subtotalProduk,
                      shipping: detail.data?.ongkir,
                      total: detail.data?.totalBayar,
                    ),
                    SpaceHeight(12),
                    _buildNotes(notes: detail.data?.catatan),

                    const SizedBox(height: 12),

                    _buildPaymentProof(imageUrl: detail.data?.buktiPembayaran),

                    const SizedBox(height: 24),
                  ],
                ),
              );
            case _:
              return SizedBox();
          }
        },
      ),
      bottomNavigationBar: _buildBottomBar(context, status: status),
    );
  }

  Widget _buildStatusHeader({String? status}) {
    int currentStep = 0;
    switch (status) {
      case 'Diproses':
        currentStep = 0;
        break;
      case 'Dikemas':
        currentStep = 1;
        break;
      case 'Dikirim':
        currentStep = 2;
        break;
      case 'Selesai':
        currentStep = 3;
        break;
      case 'Dibatalkan':
        currentStep = -1;
        break;
    }

    final steps = [
      {'icon': Icons.receipt_long, 'label': 'Diproses'},
      {'icon': Icons.inventory_2, 'label': 'Dikemas'},
      {'icon': Icons.local_shipping, 'label': 'Dikirim'},
      {'icon': Icons.check_circle, 'label': 'Sampai'},
    ];

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
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
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Status Pengiriman',
            style: SedayuTextStyles.headlineSmall.copyWith(
              color: ColorsApp.textPrimary,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 16),

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(steps.length * 2 - 1, (index) {
              if (index.isEven) {
                final stepIndex = index ~/ 2;
                final isCompleted = currentStep >= stepIndex;
                final isActive = currentStep == stepIndex;
                final isCancelled = status == 'Dibatalkan';

                return Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                          color: isCancelled
                              ? ColorsApp.grey.withAlpha(20)
                              : isCompleted
                              ? ColorsApp.primary
                              : ColorsApp.grey.withAlpha(20),
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: isCancelled
                                ? ColorsApp.grey
                                : isActive
                                ? ColorsApp.primary
                                : isCompleted
                                ? ColorsApp.primary
                                : ColorsApp.grey.withAlpha(20),
                            width: isActive ? 2.5 : 1.5,
                          ),
                        ),
                        child: Icon(
                          steps[stepIndex]['icon'] as IconData,
                          color: isCancelled
                              ? ColorsApp.grey
                              : isCompleted
                              ? ColorsApp.white
                              : ColorsApp.grey,
                          size: 18,
                        ),
                      ),
                      const SizedBox(height: 8),
                      SizedBox(
                        height: 28,
                        child: Text(
                          steps[stepIndex]['label'] as String,
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: SedayuTextStyles.labelSmall.copyWith(
                            color: isCancelled
                                ? ColorsApp.grey
                                : isCompleted
                                ? ColorsApp.primary
                                : ColorsApp.textSecondary,
                            fontWeight: isActive
                                ? FontWeight.bold
                                : FontWeight.normal,
                            fontSize: 8,
                            height: 1.2,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              } else {
                final stepIndex = index ~/ 2;
                final isCompleted = currentStep > stepIndex;
                final isCancelled = status == 'Dibatalkan';

                return Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 17),
                    child: Container(
                      height: 2,
                      color: isCancelled
                          ? ColorsApp.grey.withAlpha(20)
                          : isCompleted
                          ? ColorsApp.primary
                          : ColorsApp.grey.withAlpha(20),
                    ),
                  ),
                );
              }
            }),
          ),
          if (status == 'Dibatalkan') ...[
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.red.withAlpha(25),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.red.withAlpha(75), width: 1),
              ),
              child: Row(
                children: [
                  const Icon(Icons.cancel, color: Colors.red, size: 20),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'Pesanan dibatalkan',
                      style: SedayuTextStyles.bodyLargeMedium.copyWith(
                        color: Colors.red,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildOrderInfo({String? orderNumber, DateTime? date}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
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
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Informasi Pesanan',
            style: SedayuTextStyles.headlineSmall.copyWith(
              color: ColorsApp.textPrimary,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 16),
          _buildInfoRow('No. Pesanan', orderNumber ?? '-'),
          const SizedBox(height: 12),
          _buildInfoRow(
            'Tanggal Pesanan',
            date != null ? DateFormat('dd MMM yyyy').format(date) : '-',
          ),
        ],
      ),
    );
  }

  Widget _buildShippingInfo() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
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
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(
                Icons.local_shipping,
                color: ColorsApp.primary,
                size: 20,
              ),
              const SizedBox(width: 8),
              Text(
                'Informasi Pengiriman',
                style: SedayuTextStyles.headlineSmall.copyWith(
                  color: ColorsApp.textPrimary,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: ColorsApp.lightGreen.withAlpha(20),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: ColorsApp.primary.withAlpha(50),
                width: 1,
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nomor Resi',
                        style: SedayuTextStyles.labelSmall.copyWith(
                          color: ColorsApp.textSecondary,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'JNE123456789012',
                        style: SedayuTextStyles.bodyLargeBold.copyWith(
                          color: ColorsApp.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: ColorsApp.primary,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: const Icon(
                    Icons.copy,
                    size: 16,
                    color: ColorsApp.white,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          _buildInfoRow('Kurir', 'JNE REG'),
          const SizedBox(height: 12),
          _buildInfoRow('Estimasi Tiba', '25 - 27 Des 2025'),
        ],
      ),
    );
  }

  Widget _buildRecipientInfo({DataPenerima? recipient}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
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
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.location_on, color: ColorsApp.primary, size: 20),
              const SizedBox(width: 8),
              Text(
                'Data Penerima',
                style: SedayuTextStyles.headlineSmall.copyWith(
                  color: ColorsApp.textPrimary,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          _buildInfoRow('Nama', recipient?.namaPenerima ?? '-'),
          const SizedBox(height: 12),
          _buildInfoRow('No. Telepon', recipient?.nomorTelepon ?? '-'),
          const SizedBox(height: 12),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 100,
                child: Text(
                  'Alamat',
                  style: SedayuTextStyles.bodyLargeMedium.copyWith(
                    color: ColorsApp.textSecondary,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  '${recipient?.alamat ?? '-'}\n${recipient?.kabupatenTujuan ?? '-'}',
                  style: SedayuTextStyles.bodyLargeMedium.copyWith(
                    color: ColorsApp.textPrimary,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildNotes({String? notes}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
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
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.note, color: ColorsApp.primary, size: 20),
              const SizedBox(width: 8),
              Text(
                'Catatan',
                style: SedayuTextStyles.headlineSmall.copyWith(
                  color: ColorsApp.textPrimary,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            notes ?? '-',
            style: SedayuTextStyles.bodyLargeMedium.copyWith(
              color: ColorsApp.textPrimary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProductList({List<Item>? items}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
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
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(
                Icons.shopping_bag,
                color: ColorsApp.primary,
                size: 20,
              ),
              const SizedBox(width: 8),
              Text(
                'Detail Produk',
                style: SedayuTextStyles.headlineSmall.copyWith(
                  color: ColorsApp.textPrimary,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          ...items?.map(
                (product) => _buildProductItem(product: product.produk),
              ) ??
              [],
        ],
      ),
    );
  }

  Widget _buildProductItem({Produk? product}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: ColorsApp.lightGreen.withAlpha(20),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: ColorsApp.primary.withAlpha(50), width: 1),
      ),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: ColorsApp.white,
              borderRadius: BorderRadius.circular(6),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CachedNetworkImage(
                imageUrl: '${Url.baseUrl}/${product?.gambarVarian ?? ''}',
                fit: BoxFit.cover,
                placeholder: (context, url) =>
                    const Icon(Icons.image, color: ColorsApp.primary, size: 26),
                errorWidget: (context, url, error) => const Icon(
                  Icons.image_not_supported,
                  color: ColorsApp.primary,
                  size: 26,
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
                  '${product?.namaProduk ?? '-'} (${product?.namaVarian ?? '-'})',
                  style: SedayuTextStyles.bodyLargeBold.copyWith(
                    color: ColorsApp.textPrimary,
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  '${product?.kuantitas ?? '-'} × Rp ${product?.harga.toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]}.')}',
                  style: SedayuTextStyles.bodyLargeMedium.copyWith(
                    color: ColorsApp.textSecondary,
                    fontSize: 11,
                  ),
                ),
                SpaceHeight(2),
                Text(
                  'Rp ${product?.subtotal.toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]}.')}',
                  style: SedayuTextStyles.bodyLargeBold.copyWith(
                    color: ColorsApp.textPrimary,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      // child: Row(
      //   children: [
      //     Container(
      //       width: 60,
      //       height: 60,
      //       decoration: BoxDecoration(
      //         color: ColorsApp.white,
      //         borderRadius: BorderRadius.circular(8),
      //         border: Border.all(color: ColorsApp.borderColor.withAlpha(51)),
      //       ),
      //       child: ClipRRect(
      //         borderRadius: BorderRadius.circular(8),
      //         child: const Icon(Icons.eco, color: ColorsApp.primary, size: 32),
      //       ),
      //     ),
      //     const SizedBox(width: 12),
      //     Expanded(
      //       child: Column(
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: [
      //           Text(
      //             product?.namaProduk ?? '-',
      //             style: SedayuTextStyles.bodyLargeBold.copyWith(
      //               color: ColorsApp.textPrimary,
      //               fontWeight: FontWeight.w600,
      //             ),
      //           ),
      //           const SizedBox(height: 4),
      //           Text(
      //             '${product?.kuantitas ?? '-'} nama satuan',
      //             style: SedayuTextStyles.labelSmall.copyWith(
      //               color: ColorsApp.textSecondary,
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //     Text(
      //       'Rp ${product?.harga ?? '-'}',
      //       style: SedayuTextStyles.bodyLargeBold.copyWith(
      //         color: ColorsApp.primary,
      //         fontWeight: FontWeight.bold,
      //       ),
      //     ),
      //   ],
      // ),
    );
  }

  Widget _buildPaymentSummary({int? subtotal, int? shipping, int? total}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
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
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.receipt, color: ColorsApp.primary, size: 20),
              const SizedBox(width: 8),
              Text(
                'Ringkasan Pembayaran',
                style: SedayuTextStyles.headlineSmall.copyWith(
                  color: ColorsApp.textPrimary,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          _buildPriceRow(
            'Subtotal Produk',
            'Rp ${subtotal.toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]}.')}',
          ),
          const SizedBox(height: 8),
          _buildPriceRow(
            'Ongkos Kirim',
            'Rp ${shipping.toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]}.')}',
          ),
          const SizedBox(height: 12),
          Container(height: 1, color: ColorsApp.borderColor.withAlpha(51)),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total Pembayaran',
                style: SedayuTextStyles.headlineSmall.copyWith(
                  color: ColorsApp.textPrimary,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text(
                'Rp ${total.toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]}.')}',
                style: SedayuTextStyles.headlineSmall.copyWith(
                  color: ColorsApp.primary,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPaymentProof({String? imageUrl}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
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
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.payment, color: ColorsApp.primary, size: 20),
              const SizedBox(width: 8),
              Text(
                'Bukti Transfer',
                style: SedayuTextStyles.headlineSmall.copyWith(
                  color: ColorsApp.textPrimary,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Container(
            width: double.infinity,

            decoration: BoxDecoration(
              color: ColorsApp.backgroundColor,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: ColorsApp.borderColor.withAlpha(51)),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: CachedNetworkImage(
                imageUrl: '${Url.baseUrl}/${imageUrl ?? ''}',
                fit: BoxFit.cover,
                placeholder: (context, url) =>
                    const Icon(Icons.image, color: ColorsApp.primary, size: 26),
                errorWidget: (context, url, error) => const Icon(
                  Icons.image_not_supported,
                  color: ColorsApp.primary,
                  size: 26,
                ),
              ),
            ),
            // child: ClipRRect(
            //   borderRadius: BorderRadius.circular(12),
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Container(
            //         padding: const EdgeInsets.all(16),
            //         decoration: BoxDecoration(
            //           color: ColorsApp.primary.withAlpha(26),
            //           shape: BoxShape.circle,
            //         ),
            //         child: const Icon(
            //           Icons.image,
            //           size: 48,
            //           color: ColorsApp.primary,
            //         ),
            //       ),
            //       const SizedBox(height: 12),
            //       Text(
            //         'Bukti Transfer',
            //         style: SedayuTextStyles.bodyLargeBold.copyWith(
            //           color: ColorsApp.textSecondary,
            //         ),
            //       ),
            //       const SizedBox(height: 4),
            //       Text(
            //         'Tap untuk melihat',
            //         style: SedayuTextStyles.labelSmall.copyWith(
            //           color: ColorsApp.textSecondary,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomBar(BuildContext context, {String? status}) {
    if (status == 'Dibatalkan' || status == 'Selesai') {
      return Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: ColorsApp.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(13),
              offset: const Offset(0, -2),
              blurRadius: 8,
            ),
          ],
        ),
        child: Button.outlined(
          onPressed: () {},
          label: status == 'Selesai' ? 'Beli Lagi' : 'Kembali',
        ),
      );
    }

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: ColorsApp.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(13),
            offset: const Offset(0, -2),
            blurRadius: 8,
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Button.outlined(onPressed: () {}, label: 'Hubungi Penjual'),
          ),
          if (status == 'Dikirim') ...[
            const SizedBox(width: 12),
            Expanded(
              child: Button.filled(
                onPressed: () {},
                label: 'Selesai',
                color: ColorsApp.primary,
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 100,
          child: Text(
            label,
            style: SedayuTextStyles.bodyLargeMedium.copyWith(
              color: ColorsApp.textSecondary,
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            value,
            style: SedayuTextStyles.bodyLargeMedium.copyWith(
              color: ColorsApp.textPrimary,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPriceRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: SedayuTextStyles.bodyLargeMedium.copyWith(
            color: ColorsApp.textSecondary,
          ),
        ),
        Text(
          value,
          style: SedayuTextStyles.bodyLargeMedium.copyWith(
            color: ColorsApp.textPrimary,
          ),
        ),
      ],
    );
  }
}
