import 'dart:convert';

class OrderResponseModel {
  final bool? success;
  final String? message;
  final List<DataPesanan>? data;

  OrderResponseModel({this.success, this.message, this.data});

  factory OrderResponseModel.fromJson(String str) =>
      OrderResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory OrderResponseModel.fromMap(Map<String, dynamic> json) =>
      OrderResponseModel(
        success: json["success"],
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<DataPesanan>.from(
                json["data"]!.map((x) => DataPesanan.fromMap(x)),
              ),
      );

  Map<String, dynamic> toMap() => {
    "success": success,
    "message": message,
    "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toMap())),
  };
}

class DataPesanan {
  final int? pesananId;
  final int? dihapus;
  final String? nomorPesanan;
  final DateTime? pesananDibuatPada;
  final int? totalBayar;
  final String? status;
  final String? catatan;
  final dynamic keterangan;
  final List<ItemPesanan>? itemPesanan;

  DataPesanan({
    this.pesananId,
    this.dihapus,
    this.nomorPesanan,
    this.pesananDibuatPada,
    this.totalBayar,
    this.status,
    this.catatan,
    this.keterangan,
    this.itemPesanan,
  });

  factory DataPesanan.fromJson(String str) =>
      DataPesanan.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory DataPesanan.fromMap(Map<String, dynamic> json) => DataPesanan(
    pesananId: json["pesanan_id"],
    dihapus: json["dihapus"],
    nomorPesanan: json["nomor_pesanan"],
    pesananDibuatPada: json["pesanan_dibuat_pada"] == null
        ? null
        : DateTime.parse(json["pesanan_dibuat_pada"]),
    totalBayar: json["total_bayar"],
    status: json["status"],
    catatan: json["catatan"],
    keterangan: json["keterangan"],
    itemPesanan: json["item_pesanan"] == null
        ? []
        : List<ItemPesanan>.from(
            json["item_pesanan"]!.map((x) => ItemPesanan.fromMap(x)),
          ),
  );

  Map<String, dynamic> toMap() => {
    "pesanan_id": pesananId,
    "dihapus": dihapus,
    "nomor_pesanan": nomorPesanan,
    "pesanan_dibuat_pada": pesananDibuatPada?.toIso8601String(),
    "total_bayar": totalBayar,
    "status": status,
    "catatan": catatan,
    "keterangan": keterangan,
    "item_pesanan": itemPesanan == null
        ? []
        : List<dynamic>.from(itemPesanan!.map((x) => x.toMap())),
  };
}

class ItemPesanan {
  final int? itemPesananId;
  final Produk? produk;

  ItemPesanan({this.itemPesananId, this.produk});

  factory ItemPesanan.fromJson(String str) =>
      ItemPesanan.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ItemPesanan.fromMap(Map<String, dynamic> json) => ItemPesanan(
    itemPesananId: json["item_pesanan_id"],
    produk: json["produk"] == null ? null : Produk.fromMap(json["produk"]),
  );

  Map<String, dynamic> toMap() => {
    "item_pesanan_id": itemPesananId,
    "produk": produk?.toMap(),
  };
}

class Produk {
  final int? produkId;
  final String? namaProduk;
  final int? varianId;
  final String? gambarVarian;
  final String? namaVarian;
  final int? harga;
  final int? kuantitas;
  final int? subtotal;

  Produk({
    this.produkId,
    this.namaProduk,
    this.varianId,
    this.gambarVarian,
    this.namaVarian,
    this.harga,
    this.kuantitas,
    this.subtotal,
  });

  factory Produk.fromJson(String str) => Produk.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Produk.fromMap(Map<String, dynamic> json) => Produk(
    produkId: json["produk_id"],
    namaProduk: json["nama_produk"],
    varianId: json["varian_id"],
    gambarVarian: json["gambar_varian"],
    namaVarian: json["nama_varian"],
    harga: json["harga"],
    kuantitas: json["kuantitas"],
    subtotal: json["subtotal"],
  );

  Map<String, dynamic> toMap() => {
    "produk_id": produkId,
    "nama_produk": namaProduk,
    "varian_id": varianId,
    "gambar_varian": gambarVarian,
    "nama_varian": namaVarian,
    "harga": harga,
    "kuantitas": kuantitas,
    "subtotal": subtotal,
  };
}
