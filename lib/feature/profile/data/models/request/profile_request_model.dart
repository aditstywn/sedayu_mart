import 'dart:convert';

import 'package:image_picker/image_picker.dart';

class ProfileRequestModel {
  final String? nama;
  final String? alamat;
  final String? kabupaten;
  final String? nomorTelepon;
  final XFile? image;

  ProfileRequestModel({
    this.nama,
    this.alamat,
    this.kabupaten,
    this.nomorTelepon,
    this.image,
  });

  factory ProfileRequestModel.fromJson(String str) =>
      ProfileRequestModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ProfileRequestModel.fromMap(Map<String, dynamic> json) =>
      ProfileRequestModel(
        nama: json["nama"],
        alamat: json["alamat"],
        kabupaten: json["kabupaten"],
        nomorTelepon: json["nomor_telepon"],
      );

  Map<String, dynamic> toMap() => {
    "nama": nama,
    "alamat": alamat,
    "kabupaten": kabupaten,
    "nomor_telepon": nomorTelepon,
  };
  Map<String, String> toMapString() => {
    "nama": nama ?? '',
    "alamat": alamat ?? '',
    "kabupaten": kabupaten ?? '',
    "nomor_telepon": nomorTelepon ?? '',
  };
}
