import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geocoding/geocoding.dart';
import 'package:latlong2/latlong.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import 'package:url_launcher/url_launcher.dart';

import '../extensions/build_context_ext.dart';
import '../style/color/colors_app.dart';
import 'space.dart';

class CustomMap extends StatefulWidget {
  final double latitude;
  final double longitude;
  final double zoom;
  final double height;
  final double borderRadius;
  final bool showZoomControls;
  final bool? showAddress;
  final Function(LatLng)? onTap;
  final Function(String? city, String? province, String? postalCode)?
  onAddressChanged;

  const CustomMap({
    super.key,
    required this.latitude,
    required this.longitude,
    this.zoom = 19,
    this.height = 200,
    this.borderRadius = 4,
    this.onTap,
    this.showZoomControls = true,
    this.onAddressChanged,
    this.showAddress,
  });

  @override
  State<CustomMap> createState() => _CustomMapState();
}

class _CustomMapState extends State<CustomMap> {
  late final MapController _mapController = MapController();

  String? _address;
  bool _isLoadingAddress = false;
  String? _addressError;

  @override
  void didUpdateWidget(covariant CustomMap oldWidget) {
    super.didUpdateWidget(oldWidget);

    // Update posisi peta setiap kali latitude/longitude berubah
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _mapController.move(
        LatLng(widget.latitude, widget.longitude),
        widget.zoom,
      );
    });

    // update alamat jika koordinat berubah
    if (widget.latitude != oldWidget.latitude ||
        widget.longitude != oldWidget.longitude) {
      _getAddressFromCoordinates();
    }
  }

  @override
  void initState() {
    super.initState();
    setLocaleIdentifier('id_ID');
    _getAddressFromCoordinates();
  }

  // Fungsi untuk mendapatkan alamat dari koordinat
  Future<void> _getAddressFromCoordinates() async {
    if (!mounted) return;

    setState(() {
      _isLoadingAddress = true;
      _addressError = null;
    });

    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(
        widget.latitude,
        widget.longitude,
      );

      if (placemarks.isNotEmpty && mounted) {
        final place = placemarks.first;

        String address = _buildReadableAddress(place);

        // Extract data untuk callback
        String? city = place.subAdministrativeArea;
        String? province = place.administrativeArea;
        String? postalCode = place.postalCode;

        // Panggil callback jika ada
        if (widget.onAddressChanged != null) {
          widget.onAddressChanged!(city, province, postalCode);
        }

        setState(() {
          _address = address;
          _isLoadingAddress = false;
        });
      } else if (mounted) {
        setState(() {
          _address = 'Alamat tidak ditemukan';
          _isLoadingAddress = false;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _addressError = 'Gagal mendapatkan alamat: ${e.toString()}';

          _address =
              'Lat: ${widget.latitude.toStringAsFixed(6)}, Lng: ${widget.longitude.toStringAsFixed(6)}';
          _isLoadingAddress = false;
        });
      }
    }
  }

  String _buildReadableAddress(Placemark place) {
    List<String> addressParts = [];

    // Tambah nama jalan
    if (place.street?.isNotEmpty == true) {
      addressParts.add(place.street!);
    } else if (place.name?.isNotEmpty == true) {
      addressParts.add(place.name!);
    }

    // Tambah sub lokalitas
    if (place.subLocality?.isNotEmpty == true) {
      addressParts.add(place.subLocality!);
    }

    // Tambah kota/kabupaten
    if (place.locality?.isNotEmpty == true) {
      addressParts.add(place.locality!);
    }

    // Tambah kabupaten/kota (jika berbeda dengan locality)
    if (place.subAdministrativeArea?.isNotEmpty == true &&
        place.subAdministrativeArea != place.locality) {
      addressParts.add(place.subAdministrativeArea!);
    }

    // Tambah provinsi
    if (place.administrativeArea?.isNotEmpty == true) {
      addressParts.add(place.administrativeArea!);
    }

    // Tambah kode pos
    if (place.postalCode?.isNotEmpty == true) {
      addressParts.add(place.postalCode!);
    }

    // Gabungkan alamat dengan koma
    String fullAddress = addressParts.join(', ');

    // Batas panjang alamat
    if (fullAddress.length > 200) {
      fullAddress = '${fullAddress.substring(0, 97)}...';
    }

    return fullAddress.isNotEmpty
        ? fullAddress
        : 'Lat: ${widget.latitude.toStringAsFixed(6)}, Lng: ${widget.longitude.toStringAsFixed(6)}';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: widget.height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(widget.borderRadius),
          ),
          child: Stack(
            children: [
              if (widget.latitude == 0 && widget.longitude == 0)
                Container(
                  height: widget.height,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: ColorsApp.grey.withAlpha(50),
                    borderRadius: BorderRadius.circular(widget.borderRadius),
                  ),
                  child: Center(
                    child: SizedBox(
                      width: 24,
                      height: 24,
                      child: CircularProgressIndicator(
                        color: ColorsApp.primary,
                      ),
                    ),
                  ),
                )
              else
                ClipRRect(
                  borderRadius: BorderRadius.circular(widget.borderRadius),
                  child: FlutterMap(
                    mapController: _mapController,
                    options: MapOptions(
                      initialCenter: LatLng(widget.latitude, widget.longitude),
                      initialZoom: widget.zoom,
                      minZoom: 8,
                      maxZoom: 19,
                      // Enable interaksi zoom dan pan
                      interactionOptions: const InteractionOptions(
                        flags: InteractiveFlag.all,
                      ),
                      // Callback ketika peta diklik
                      onTap: (tapPosition, point) {
                        if (widget.onTap != null) {
                          widget.onTap!(point);
                        }
                      },
                    ),
                    children: [
                      TileLayer(
                        urlTemplate:
                            'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                        userAgentPackageName: 'com.sedayu.app',
                      ),
                      MarkerLayer(
                        markers: [
                          Marker(
                            point: LatLng(widget.latitude, widget.longitude),
                            width: 80,
                            height: 80,
                            child: const Icon(
                              Icons.location_pin,
                              color: Colors.red,
                              size: 40,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              Positioned(
                left: 6,
                bottom: 2,
                child: TextSourceAttribution(
                  'OpenStreetMap contributors',
                  onTap: () => launchUrl(
                    Uri.parse('https://openstreetmap.org/copyright'),
                  ),
                  textStyle: TextStyle(
                    color: ColorsApp.textPrimary,
                    fontSize: 10,
                  ),
                ),
              ),
              // Zoom controls
              if (widget.showZoomControls)
                Positioned(
                  right: 16,
                  bottom: 4,
                  child: Column(
                    children: [
                      _buildZoomButton(
                        icon: Icons.add,
                        onPressed: () {
                          final currentZoom = _mapController.camera.zoom;
                          _mapController.move(
                            _mapController.camera.center,
                            currentZoom + 1,
                          );
                        },
                      ),

                      const SpaceHeight(8),
                      _buildZoomButton(
                        icon: Icons.remove,
                        onPressed: () {
                          final currentZoom = _mapController.camera.zoom;
                          _mapController.move(
                            _mapController.camera.center,
                            currentZoom - 1,
                          );
                        },
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
        const SpaceHeight(12),
        if (widget.showAddress == true) _buildAddressWidget(),
      ],
    );
  }

  Widget _buildZoomButton({
    required IconData icon,
    required VoidCallback onPressed,
  }) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
      elevation: 2,
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(8),
        child: Container(
          width: 35,
          height: 35,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(6)),
          child: Icon(icon, color: ColorsApp.primary, size: 24),
        ),
      ),
    );
  }

  Widget _buildAddressWidget() {
    if (_isLoadingAddress) {
      return Shimmer(
        child: Container(
          height: 17,
          width: context.deviceWidth * 0.5,
          decoration: BoxDecoration(
            color: ColorsApp.grey.withAlpha(100),
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      );
    }

    if (_addressError != null) {
      // Jika gagal ambil alamat
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '-',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              color: ColorsApp.grey,
            ),
          ),
        ],
      );
    }

    // Jika alamat berhasil diambil
    return Text(
      _address ?? 'Alamat tidak tersedia',
      style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w700,
        color: ColorsApp.grey,
      ),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
