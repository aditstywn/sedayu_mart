import 'dart:convert';

import 'package:image_picker/image_picker.dart';

class CheckoutCartRequestModel {
  final List<int>? keranjangId;
  final int? alamatId;
  final int? rekeningId;
  final String? catatan;
  final XFile? buktiPembayaran;

  CheckoutCartRequestModel({
    this.keranjangId,
    this.alamatId,
    this.rekeningId,
    this.catatan,
    this.buktiPembayaran,
  });

  factory CheckoutCartRequestModel.fromJson(String str) =>
      CheckoutCartRequestModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CheckoutCartRequestModel.fromMap(Map<String, dynamic> json) =>
      CheckoutCartRequestModel(
        keranjangId: json["keranjang_id"] == null
            ? []
            : List<int>.from(json["keranjang_id"]!.map((x) => x)),
        alamatId: json["alamat_id"],
        rekeningId: json["rekening_id"],
        catatan: json["catatan"],
      );

  Map<String, dynamic> toMap() => {
    "keranjang_id": keranjangId == null
        ? []
        : List<dynamic>.from(keranjangId!.map((x) => x)),
    "alamat_id": alamatId,
    "rekening_id": rekeningId,
    "catatan": catatan,
  };

  Map<String, String> toMapString() {
    final map = <String, String>{};

    // contoh output:
    // keranjang_id[0]: "17"
    // keranjang_id[1]: "20"
    if (keranjangId != null) {
      for (int i = 0; i < keranjangId!.length; i++) {
        map['keranjang_id[$i]'] = keranjangId![i].toString();
      }
    }

    map['alamat_id'] = alamatId?.toString() ?? '';
    map['rekening_id'] = rekeningId?.toString() ?? '';
    map['catatan'] = catatan ?? '';

    return map;
  }
}
