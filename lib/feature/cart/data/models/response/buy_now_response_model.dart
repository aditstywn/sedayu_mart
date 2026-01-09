import 'dart:convert';

class BuyNowResponseModel {
  final bool? success;
  final String? message;
  final Data? data;

  BuyNowResponseModel({this.success, this.message, this.data});

  factory BuyNowResponseModel.fromJson(String str) =>
      BuyNowResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory BuyNowResponseModel.fromMap(Map<String, dynamic> json) =>
      BuyNowResponseModel(
        success: json["success"],
        message: json["message"],
        data: json["data"] == null ? null : Data.fromMap(json["data"]),
      );

  Map<String, dynamic> toMap() => {
    "success": success,
    "message": message,
    "data": data?.toMap(),
  };
}

class Data {
  final BeliSekarang? beliSekarang;

  Data({this.beliSekarang});

  factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Data.fromMap(Map<String, dynamic> json) => Data(
    beliSekarang: json["beli_sekarang"] == null
        ? null
        : BeliSekarang.fromMap(json["beli_sekarang"]),
  );

  Map<String, dynamic> toMap() => {"beli_sekarang": beliSekarang?.toMap()};
}

class BeliSekarang {
  final int? produkId;
  final String? namaProduk;
  final String? satuanProduk;
  final int? varianId;
  final String? gambarVarian;
  final String? namaVarian;
  final int? stokVarian;
  final int? harga;
  final int? kuantitas;
  final int? beratGram;
  final int? beratKg;
  final int? subtotal;
  final int? ongkir;
  final int? totalBayar;

  BeliSekarang({
    this.produkId,
    this.namaProduk,
    this.satuanProduk,
    this.varianId,
    this.gambarVarian,
    this.namaVarian,
    this.stokVarian,
    this.harga,
    this.kuantitas,
    this.beratGram,
    this.beratKg,
    this.subtotal,
    this.ongkir,
    this.totalBayar,
  });

  factory BeliSekarang.fromJson(String str) =>
      BeliSekarang.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory BeliSekarang.fromMap(Map<String, dynamic> json) => BeliSekarang(
    produkId: json["produk_id"],
    namaProduk: json["nama_produk"],
    satuanProduk: json["satuan_produk"],
    varianId: json["varian_id"],
    gambarVarian: json["gambar_varian"],
    namaVarian: json["nama_varian"],
    stokVarian: json["stok_varian"],
    harga: json["harga"],
    kuantitas: json["kuantitas"],
    beratGram: json["berat_gram"],
    beratKg: json["berat_kg"],
    subtotal: json["subtotal"],
    ongkir: json["ongkir"],
    totalBayar: json["total_bayar"],
  );

  Map<String, dynamic> toMap() => {
    "produk_id": produkId,
    "nama_produk": namaProduk,
    "satuan_produk": satuanProduk,
    "varian_id": varianId,
    "gambar_varian": gambarVarian,
    "nama_varian": namaVarian,
    "stok_varian": stokVarian,
    "harga": harga,
    "kuantitas": kuantitas,
    "berat_gram": beratGram,
    "berat_kg": beratKg,
    "subtotal": subtotal,
    "ongkir": ongkir,
    "total_bayar": totalBayar,
  };
}
