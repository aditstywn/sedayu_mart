import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../../core/component/buttons.dart';
import '../../../../core/component/custom_map.dart';
import '../../../../core/component/custom_textformfield.dart';
import '../../../../core/component/space.dart';
import '../../../../core/config/location_service.dart';
import '../../../../core/extensions/build_context_ext.dart';
import '../../../../core/style/color/colors_app.dart';
import '../../data/models/request/shipping_address_request_model.dart';
import '../bloc/section/section_bloc.dart';
import '../bloc/submit_profile/submit_profile_bloc.dart';

class AddShippingAddressPage extends StatefulWidget {
  final ShippingAddressRequestModel? initialAddress;
  const AddShippingAddressPage({super.key, this.initialAddress});

  @override
  State<AddShippingAddressPage> createState() => _AddShippingAddressPageState();
}

class _AddShippingAddressPageState extends State<AddShippingAddressPage> {
  final _formKey = GlobalKey<FormState>();
  final _namaPenerimaController = TextEditingController();
  final _nomorTeleponController = TextEditingController();
  final _alamatController = TextEditingController();
  final _kabupatenController = TextEditingController();
  final _provinsiController = TextEditingController();
  final _kodePosController = TextEditingController();
  final _keteranganController = TextEditingController();
  int _isUtama = 0;

  final LocationService _loc = LocationService();
  Position? currentPosition;

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
    try {
      final position = await _loc.getCurrentLocation();
      setState(() {
        currentPosition = position;
      });
    } catch (e) {
      if (mounted) {
        context.showAlertError(
          message: 'Berikan izin akses lokasi pada aplikasi ini',
        );
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
    if (widget.initialAddress != null) {
      final address = widget.initialAddress!;
      _namaPenerimaController.text = address.namaPenerima ?? '';
      _nomorTeleponController.text = address.nomorTelepon ?? '';
      _alamatController.text = address.alamat ?? '';
      _kabupatenController.text = address.kabupaten ?? '';
      _provinsiController.text = address.provinsi ?? '';
      _kodePosController.text = address.kodePos ?? '';
      _keteranganController.text = address.keterangan ?? '';
      _isUtama = address.utama ?? 0;
    }
  }

  @override
  void dispose() {
    _namaPenerimaController.dispose();
    _nomorTeleponController.dispose();
    _alamatController.dispose();
    _kabupatenController.dispose();
    _provinsiController.dispose();
    _kodePosController.dispose();
    _keteranganController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tambah Alamat')),
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: ColorsApp.white,
                    borderRadius: BorderRadius.circular(10),

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
                      // Nama Penerima
                      CustomTextFormField(
                        controller: _namaPenerimaController,
                        label: 'Nama ',
                        hintText: 'Masukkan nama penerima',
                        prefixIcon: const Icon(Icons.person_outline, size: 20),
                        isRequired: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Nama penerima harus diisi';
                          }
                          return null;
                        },
                      ),
                      const SpaceHeight(16),

                      // Nomor Telepon
                      CustomTextFormField(
                        controller: _nomorTeleponController,
                        label: 'Nomor Telepon',
                        hintText: 'Masukkan nomor telepon',
                        keyboardType: TextInputType.phone,
                        prefixIcon: const Icon(Icons.phone_outlined, size: 20),
                        isRequired: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Nomor telepon harus diisi';
                          }
                          if (value.length < 10) {
                            return 'Nomor telepon minimal 10 digit';
                          }
                          return null;
                        },
                      ),
                      const SpaceHeight(16),

                      CustomMap(
                        latitude: currentPosition?.latitude ?? 0,
                        longitude: currentPosition?.longitude ?? 0,
                        zoom: 15,
                        onTap: (LatLng point) {
                          setState(() {
                            if (currentPosition != null) {
                              currentPosition = Position(
                                latitude: point.latitude,
                                longitude: point.longitude,
                                timestamp: currentPosition!.timestamp,
                                accuracy: currentPosition!.accuracy,
                                altitude: currentPosition!.altitude,
                                altitudeAccuracy:
                                    currentPosition!.altitudeAccuracy,
                                heading: currentPosition!.heading,
                                headingAccuracy:
                                    currentPosition!.headingAccuracy,
                                speed: currentPosition!.speed,
                                speedAccuracy: currentPosition!.speedAccuracy,
                              );
                            }
                          });
                        },
                        onAddressChanged: (city, province, postalCode) {
                          if (widget.initialAddress != null) return;
                          _kabupatenController.text = city ?? '';
                          _provinsiController.text = province ?? '';
                          _kodePosController.text = postalCode ?? '';
                        },
                        showZoomControls: true,
                      ),

                      // Alamat Lengkap
                      CustomTextFormField(
                        controller: _alamatController,
                        label: 'Alamat Lengkap',
                        hintText: 'Masukkan alamat lengkap',
                        maxLines: 3,
                        prefixIcon: const Icon(
                          Icons.location_on_outlined,
                          size: 20,
                        ),
                        isRequired: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Alamat harus diisi';
                          }
                          return null;
                        },
                      ),
                      const SpaceHeight(16),

                      // Kabupaten
                      CustomTextFormField(
                        controller: _kabupatenController,
                        label: 'Kabupaten/Kota',
                        hintText: 'Masukkan kabupaten/kota',
                        prefixIcon: const Icon(
                          Icons.location_city_outlined,
                          size: 20,
                        ),
                        isRequired: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Kabupaten/Kota harus diisi';
                          }
                          return null;
                        },
                      ),
                      const SpaceHeight(16),

                      // Provinsi
                      CustomTextFormField(
                        controller: _provinsiController,
                        label: 'Provinsi',
                        hintText: 'Masukkan provinsi',
                        prefixIcon: const Icon(Icons.map_outlined, size: 20),
                        isRequired: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Provinsi harus diisi';
                          }
                          return null;
                        },
                      ),
                      const SpaceHeight(16),

                      // Kode Pos
                      CustomTextFormField(
                        controller: _kodePosController,
                        label: 'Kode Pos',
                        hintText: 'Masukkan kode pos',
                        keyboardType: TextInputType.number,
                        prefixIcon: const Icon(
                          Icons.markunread_mailbox_outlined,
                          size: 20,
                        ),
                        isRequired: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Kode pos harus diisi';
                          }
                          return null;
                        },
                      ),
                      const SpaceHeight(16),

                      // Keterangan
                      CustomTextFormField(
                        controller: _keteranganController,
                        label: 'Keterangan (Opsional)',
                        hintText: 'Contoh: Rumah, Kantor, Kost',
                        prefixIcon: const Icon(Icons.label_outline, size: 20),
                      ),
                      const SpaceHeight(20),

                      // Checkbox Jadikan Alamat Utama
                      Container(
                        decoration: BoxDecoration(
                          color: ColorsApp.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: ColorsApp.borderColor.withAlpha(128),
                            width: 1,
                          ),
                        ),
                        child: CheckboxListTile(
                          value: _isUtama == 1,
                          onChanged: (value) {
                            setState(() {
                              _isUtama = value == true ? 1 : 0;
                            });
                          },
                          title: const Text(
                            'Jadikan alamat utama',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          subtitle: const Text(
                            'Alamat ini akan menjadi pilihan default',
                            style: TextStyle(
                              fontSize: 12,
                              color: ColorsApp.textSecondary,
                            ),
                          ),
                          activeColor: ColorsApp.primary,
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 4,
                          ),
                          controlAffinity: ListTileControlAffinity.leading,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(bottom: 10),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: ColorsApp.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withAlpha(10),
                    blurRadius: 8,
                    offset: const Offset(0, -2),
                  ),
                ],
              ),
              child: BlocConsumer<SubmitProfileBloc, SubmitProfileState>(
                listener: (context, state) {
                  switch (state) {
                    case AddShippingAddressSuccess(:final message):
                      context.pop();
                      context.showAlertSuccess(message: message);
                      context.read<SectionBloc>().add(
                        const SectionEvent.shippingAddress(),
                      );
                    case UpdateShippingAddressSuccess(:final message):
                      context.pop();
                      context.showAlertSuccess(message: message);
                      context.read<SectionBloc>().add(
                        const SectionEvent.shippingAddress(),
                      );
                    case ErrorSubmitProfile(:final message):
                      context.showAlertError(message: message);
                    case _:
                      break;
                  }
                },
                builder: (context, state) {
                  if (state is LoadingSubmitProfile) {
                    return Button.filled(
                      onPressed: () {},
                      label: '',
                      color: ColorsApp.primary,
                      loading: true,
                    );
                  }
                  return Button.filled(
                    onPressed: () {
                      final address = ShippingAddressRequestModel(
                        id: widget.initialAddress?.id,
                        namaPenerima: _namaPenerimaController.text,
                        nomorTelepon: _nomorTeleponController.text,
                        alamat: _alamatController.text,
                        kabupaten: _kabupatenController.text,
                        provinsi: _provinsiController.text,
                        kodePos: _kodePosController.text,
                        keterangan: _keteranganController.text,
                        utama: _isUtama,
                      );

                      print(address.toJson());

                      if (widget.initialAddress != null) {
                        context.read<SubmitProfileBloc>().add(
                          SubmitProfileEvent.updateShippingAddress(address),
                        );
                      } else {
                        context.read<SubmitProfileBloc>().add(
                          SubmitProfileEvent.addShippingAddress(address),
                        );
                      }
                    },
                    label: widget.initialAddress != null
                        ? 'Update Alamat'
                        : 'Simpan Alamat',
                    color: ColorsApp.primary,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
