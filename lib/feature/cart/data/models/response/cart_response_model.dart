import 'dart:convert';

class CartResponseModel {
  final bool? success;
  final String? message;
  final List<DataProduk>? data;

  CartResponseModel({this.success, this.message, this.data});

  factory CartResponseModel.fromJson(String str) =>
      CartResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CartResponseModel.fromMap(Map<String, dynamic> json) =>
      CartResponseModel(
        success: json["success"],
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<DataProduk>.from(
                json["data"]!.map((x) => DataProduk.fromMap(x)),
              ),
      );

  Map<String, dynamic> toMap() => {
    "success": success,
    "message": message,
    "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toMap())),
  };
}

class DataProduk {
  final int? id;
  final Produk? produk;
  final Varian? varian;
  final int? kuantitas;
  final int? subtotal;
  final String? keterangan;

  DataProduk({
    this.id,
    this.produk,
    this.varian,
    this.kuantitas,
    this.subtotal,
    this.keterangan,
  });

  factory DataProduk.fromJson(String str) =>
      DataProduk.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory DataProduk.fromMap(Map<String, dynamic> json) => DataProduk(
    id: json["id"],
    produk: json["produk"] == null ? null : Produk.fromMap(json["produk"]),
    varian: json["varian"] == null ? null : Varian.fromMap(json["varian"]),
    kuantitas: json["kuantitas"],
    subtotal: json["subtotal"],
    keterangan: json["keterangan"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "produk": produk?.toMap(),
    "varian": varian?.toMap(),
    "kuantitas": kuantitas,
    "subtotal": subtotal,
    "keterangan": keterangan,
  };
}

class Produk {
  final int? id;
  final String? nama;
  final String? satuanProduk;
  final String? gambarUtama;

  Produk({this.id, this.nama, this.satuanProduk, this.gambarUtama});

  factory Produk.fromJson(String str) => Produk.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Produk.fromMap(Map<String, dynamic> json) => Produk(
    id: json["id"],
    nama: json["nama"],
    satuanProduk: json["satuan_produk"],
    gambarUtama: json["gambar_utama"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "nama": nama,
    "satuan_produk": satuanProduk,
    "gambar_utama": gambarUtama,
  };
}

class Varian {
  final int? id;
  final String? namaVarian;
  final int? harga;
  final String? gambarUtama;

  Varian({this.id, this.namaVarian, this.harga, this.gambarUtama});

  factory Varian.fromJson(String str) => Varian.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Varian.fromMap(Map<String, dynamic> json) => Varian(
    id: json["id"],
    namaVarian: json["nama_varian"],
    harga: json["harga"],
    gambarUtama: json["gambar_utama"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "nama_varian": namaVarian,
    "harga": harga,
    "gambar_utama": gambarUtama,
  };
}
