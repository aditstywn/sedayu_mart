import 'dart:convert';

class ShippingAddressRequestModel {
  final int? id;
  final String? namaPenerima;
  final String? nomorTelepon;
  final String? alamat;
  final String? kabupaten;
  final String? provinsi;
  final String? kodePos;
  final String? keterangan;
  final int? utama;

  ShippingAddressRequestModel({
    this.id,
    this.namaPenerima,
    this.nomorTelepon,
    this.alamat,
    this.kabupaten,
    this.provinsi,
    this.kodePos,
    this.keterangan,
    this.utama,
  });

  factory ShippingAddressRequestModel.fromJson(String str) =>
      ShippingAddressRequestModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ShippingAddressRequestModel.fromMap(Map<String, dynamic> json) =>
      ShippingAddressRequestModel(
        id: json["id"],
        namaPenerima: json["nama_penerima"],
        nomorTelepon: json["nomor_telepon"],
        alamat: json["alamat"],
        kabupaten: json["kabupaten"],
        provinsi: json["provinsi"],
        kodePos: json["kode_pos"],
        keterangan: json["keterangan"],
        utama: json["utama"],
      );

  Map<String, dynamic> toMap() => {
    "id": id,
    "nama_penerima": namaPenerima,
    "nomor_telepon": nomorTelepon,
    "alamat": alamat,
    "kabupaten": kabupaten,
    "provinsi": provinsi,
    "kode_pos": kodePos,
    "keterangan": keterangan,
    "utama": utama,
  };
}
