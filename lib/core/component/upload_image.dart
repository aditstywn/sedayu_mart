import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sedayu_app/core/component/space.dart';
import 'package:image_picker/image_picker.dart';

import '../style/color/colors_app.dart';
import '../style/thypograpy/sedayu_text_style.dart';

class UploadImage extends StatefulWidget {
  final String? title;
  final String? subtitle;
  final Function(XFile?)? onImageSelected;
  const UploadImage({
    super.key,
    this.title,
    this.subtitle,
    this.onImageSelected,
  });

  @override
  State<UploadImage> createState() => _UploadImageState();
}

class _UploadImageState extends State<UploadImage> {
  XFile? _imageFile;
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
          if (widget.onImageSelected != null) {
            widget.onImageSelected!(_imageFile!);
          }
        });
      }
    } catch (e) {
      debugPrint('Error picking image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _showImageSourceDialog();
      },
      borderRadius: BorderRadius.circular(12),
      child: Container(
        width: double.infinity,

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
        child: _imageFile == null
            ? SizedBox(
                height: 150,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        color: ColorsApp.lightGreen.withAlpha(38),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.cloud_upload_outlined,
                        color: ColorsApp.primary,
                        size: 36,
                      ),
                    ),
                    const SizedBox(height: 14),
                    Text(
                      widget.title ?? 'Upload Gambar',
                      style: SedayuTextStyles.bodyLargeBold.copyWith(
                        color: ColorsApp.textPrimary,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      widget.subtitle ?? 'Format: JPG, PNG (Max 5MB)',
                      style: SedayuTextStyles.bodyLargeMedium.copyWith(
                        color: ColorsApp.textSecondary,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              )
            : Stack(
                children: [
                  InkWell(
                    onTap: () {
                      // _showImagePreview();
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.file(
                        File(_imageFile!.path),
                        width: double.infinity,

                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // InkWell(
                  //   onTap: () {
                  //     _showImagePreview();
                  //   },
                  //   child: Positioned(
                  //     top: 0,
                  //     left: 0,
                  //     right: 0,
                  //     bottom: 0,
                  //     child: Center(
                  //       child: Container(
                  //         padding: const EdgeInsets.symmetric(
                  //           horizontal: 12,
                  //           vertical: 6,
                  //         ),
                  //         decoration: BoxDecoration(
                  //           color: Colors.black.withAlpha(128),
                  //           borderRadius: BorderRadius.circular(20),
                  //         ),
                  //         child: Text(
                  //           'Ketuk gambar untuk memperbesar',
                  //           textAlign: TextAlign.center,
                  //           style: SedayuTextStyles.bodyLargeMedium.copyWith(
                  //             color: ColorsApp.white,
                  //             fontSize: 12,
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  Positioned(
                    top: 8,
                    right: 8,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          _imageFile = null;
                          if (widget.onImageSelected != null) {
                            widget.onImageSelected!(null);
                          }
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Colors.red.withAlpha(230),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.close,
                          color: ColorsApp.white,
                          size: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }

  // void _showImagePreview() {
  //   showDialog(
  //     context: context,
  //     barrierColor: Colors.black87,
  //     builder: (context) => Dialog(
  //       backgroundColor: Colors.transparent,
  //       insetPadding: const EdgeInsets.symmetric(horizontal: 16),
  //       child: Column(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: [
  //           Container(
  //             constraints: BoxConstraints(
  //               maxHeight: MediaQuery.of(context).size.height * 0.8,
  //               maxWidth: MediaQuery.of(context).size.width * 0.9,
  //             ),
  //             child: InteractiveViewer(
  //               child: Image.file(File(_imageFile!.path), fit: BoxFit.contain),
  //             ),
  //           ),
  //           const SizedBox(height: 20),
  //           ElevatedButton.icon(
  //             onPressed: () => Navigator.pop(context),
  //             icon: const Icon(Icons.close, color: Colors.white),
  //             label: const Text(
  //               'Tutup',
  //               style: TextStyle(
  //                 color: Colors.white,
  //                 fontSize: 16,
  //                 fontWeight: FontWeight.w600,
  //               ),
  //             ),
  //             style: ElevatedButton.styleFrom(
  //               backgroundColor: Colors.black.withAlpha(179),
  //               padding: const EdgeInsets.symmetric(
  //                 horizontal: 24,
  //                 vertical: 12,
  //               ),
  //               shape: RoundedRectangleBorder(
  //                 borderRadius: BorderRadius.circular(25),
  //               ),
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

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
}
