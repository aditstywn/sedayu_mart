import 'dart:convert';

import 'package:image_picker/image_picker.dart';

class CheckoutRequestModel {
  final int? produkId;
  final int? varianId;
  final int? kuantitas;
  final int? alamatId;
  final int? rekeningId;
  final String? catatan;
  final XFile? buktiPembayaran;

  CheckoutRequestModel({
    this.produkId,
    this.varianId,
    this.kuantitas,
    this.alamatId,
    this.rekeningId,
    this.catatan,
    this.buktiPembayaran,
  });

  factory CheckoutRequestModel.fromJson(String str) =>
      CheckoutRequestModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CheckoutRequestModel.fromMap(Map<String, dynamic> json) =>
      CheckoutRequestModel(
        produkId: json["produk_id"],
        varianId: json["varian_id"],
        kuantitas: json["kuantitas"],
        alamatId: json["alamat_id"],
        rekeningId: json["rekening_id"],
        catatan: json["catatan"],
      );

  Map<String, dynamic> toMap() => {
    "produk_id": produkId,
    "varian_id": varianId,
    "kuantitas": kuantitas,
    "alamat_id": alamatId,
    "rekening_id": rekeningId,
    "catatan": catatan,
  };
  Map<String, String> toMapString() => {
    "produk_id": produkId?.toString() ?? '',
    "varian_id": varianId?.toString() ?? '',
    "kuantitas": kuantitas?.toString() ?? '',
    "alamat_id": alamatId?.toString() ?? '',
    "rekening_id": rekeningId?.toString() ?? '',
    "catatan": catatan ?? '',
  };
}
