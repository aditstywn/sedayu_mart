import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../core/component/buttons.dart';
import '../../../../core/component/custom_textformfield.dart';
import '../../../../core/component/space.dart';
import '../../../../core/config/url.dart';
import '../../../../core/extensions/build_context_ext.dart';
import '../../../../core/style/color/colors_app.dart';
import '../../data/models/request/profile_request_model.dart';
import '../../data/models/response/profile_response_model.dart';
import '../bloc/profile/profile_bloc.dart';
import '../bloc/submit_profile/submit_profile_bloc.dart';

class UpdateProfile extends StatefulWidget {
  final ProfilProfil? profile;
  const UpdateProfile({super.key, this.profile});

  @override
  State<UpdateProfile> createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _citylController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  XFile? _imageFile;
  String? _imageUrl;
  final ImagePicker _picker = ImagePicker();
  Future<void> _pickImage(ImageSource source) async {
    try {
      final XFile? pickedFile = await _picker.pickImage(
        source: source,
        maxWidth: 1080,
        maxHeight: 1080,
        imageQuality: 85,
      );

      if (pickedFile != null) {
        setState(() {
          _imageFile = XFile(pickedFile.path);
        });
      }
    } catch (e) {
      debugPrint('Error picking image: $e');
    }
  }

  @override
  void initState() {
    super.initState();

    _nameController.text = widget.profile?.nama ?? '';
    _addressController.text = widget.profile?.alamat ?? '';
    _citylController.text = widget.profile?.kabupaten ?? '';
    _phoneController.text = widget.profile?.nomorTelepon ?? '';
    _imageUrl = widget.profile?.avatar;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Edit Profil')),
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Container(
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
                          Text(
                            'Foto Profil',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: ColorsApp.grey,
                            ),
                          ),
                          const SpaceHeight(12),
                          Center(
                            child: InkWell(
                              onTap: _showImageSourceDialog,
                              borderRadius: BorderRadius.circular(12),
                              child: Container(
                                width: double.infinity,
                                height: 200,
                                decoration: BoxDecoration(
                                  color: ColorsApp.gray100,
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: ColorsApp.gray300,
                                    width: 2,
                                    style: BorderStyle.solid,
                                  ),
                                ),
                                child: _imageFile != null
                                    ? ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.file(
                                          File(_imageFile!.path),
                                          fit: BoxFit.cover,
                                        ),
                                      )
                                    : _imageUrl != null
                                    ? ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.network(
                                          '${Url.baseUrl}/$_imageUrl',
                                          fit: BoxFit.cover,
                                          errorBuilder:
                                              (context, error, stackTrace) {
                                                return _buildPlaceholder();
                                              },
                                        ),
                                      )
                                    : _buildPlaceholder(),
                              ),
                            ),
                          ),
                          if (_imageFile != null || _imageUrl != null)
                            const SpaceHeight(8),
                          if (_imageFile != null || _imageUrl != null)
                            Center(
                              child: TextButton.icon(
                                onPressed: () {
                                  setState(() {
                                    _imageFile = null;
                                    _imageUrl = null;
                                  });
                                },
                                icon: const Icon(
                                  CupertinoIcons.trash,
                                  size: 16,
                                  color: Colors.red,
                                ),
                                label: const Text(
                                  'Hapus Gambar',
                                  style: TextStyle(color: Colors.red),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    const SpaceHeight(20),
                    Container(
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
                          // Nama
                          CustomTextFormField(
                            controller: _nameController,
                            label: 'Nama ',
                            hintText: 'Masukkan nama ',
                            prefixIcon: const Icon(
                              Icons.person_outline,
                              size: 20,
                            ),
                            isRequired: true,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Nama  harus diisi';
                              }
                              return null;
                            },
                          ),
                          const SpaceHeight(16),

                          // Nomor Telepon
                          CustomTextFormField(
                            controller: _phoneController,
                            label: 'Nomor Telepon',
                            hintText: 'Masukkan nomor telepon',
                            keyboardType: TextInputType.phone,
                            prefixIcon: const Icon(
                              Icons.phone_outlined,
                              size: 20,
                            ),
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

                          // Alamat Lengkap
                          CustomTextFormField(
                            controller: _addressController,
                            label: 'Alamat Lengkap',
                            hintText: 'Masukkan alamat lengkap',
                            maxLines: 3,
                            keyboardType: TextInputType.multiline,
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
                            controller: _citylController,
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
                        ],
                      ),
                    ),
                  ],
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
                    case UpdateProfileSuccess(:final data):
                      context.showAlertSuccess(
                        message: data.message ?? 'Berhasil memperbarui profil',
                      );

                      Navigator.pop(context, true);
                      context.read<ProfileBloc>().add(
                        const ProfileEvent.profile(),
                      );
                    case ErrorSubmitProfile(:final message):
                      context.showAlertError(message: message);
                    default:
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
                      if (_formKey.currentState!.validate()) {
                        final profile = ProfileRequestModel(
                          nama: _nameController.text,
                          alamat: _addressController.text,
                          kabupaten: _citylController.text,
                          nomorTelepon: _phoneController.text,
                          image: _imageFile,
                        );

                        context.read<SubmitProfileBloc>().add(
                          SubmitProfileEvent.updateProfile(profile),
                        );
                      }
                    },
                    label: 'Simpan',
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

  void _showImageSourceDialog() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      backgroundColor: ColorsApp.white,
      builder: (context) => Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: ColorsApp.gray300,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            const SpaceHeight(16),
            Text(
              'Pilih Sumber Gambar',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            const SpaceHeight(20),
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                      _pickImage(ImageSource.camera);
                    },
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        border: Border.all(color: ColorsApp.gray200),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          Icon(
                            CupertinoIcons.camera_fill,
                            size: 32,
                            color: ColorsApp.primary,
                          ),
                          const SpaceHeight(8),
                          const Text(
                            'Kamera',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SpaceWidth(12),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                      _pickImage(ImageSource.gallery);
                    },
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        border: Border.all(color: ColorsApp.gray200),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          Icon(
                            CupertinoIcons.photo_fill,
                            size: 32,
                            color: ColorsApp.primary,
                          ),
                          const SpaceHeight(8),
                          const Text(
                            'Galeri',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SpaceHeight(16),
          ],
        ),
      ),
    );
  }

  Widget _buildPlaceholder() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          CupertinoIcons.photo_on_rectangle,
          size: 48,
          color: ColorsApp.gray400,
        ),
        const SpaceHeight(8),
        Text(
          'Tap untuk upload gambar',
          style: TextStyle(fontSize: 13, color: ColorsApp.gray500),
        ),
      ],
    );
  }
}
