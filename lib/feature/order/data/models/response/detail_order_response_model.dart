import 'dart:convert';

class DetailOrderResponseModel {
  final bool? success;
  final String? message;
  final Data? data;

  DetailOrderResponseModel({this.success, this.message, this.data});

  factory DetailOrderResponseModel.fromJson(String str) =>
      DetailOrderResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory DetailOrderResponseModel.fromMap(Map<String, dynamic> json) =>
      DetailOrderResponseModel(
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
  final int? pesananId;
  final int? dihapus;
  final String? nomorPesanan;
  final DateTime? pesananDibuatPada;
  final DataPenerima? dataPenerima;
  final int? ongkir;
  final int? subtotalProduk;
  final int? totalBayar;
  final Rekening? rekening;
  final String? buktiPembayaran;
  final String? status;
  final String? catatan;
  final dynamic keterangan;
  final List<Item>? items;
  final dynamic informasiPengiriman;

  Data({
    this.pesananId,
    this.dihapus,
    this.nomorPesanan,
    this.pesananDibuatPada,
    this.dataPenerima,
    this.ongkir,
    this.subtotalProduk,
    this.totalBayar,
    this.rekening,
    this.buktiPembayaran,
    this.status,
    this.catatan,
    this.keterangan,
    this.items,
    this.informasiPengiriman,
  });

  factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Data.fromMap(Map<String, dynamic> json) => Data(
    pesananId: json["pesanan_id"],
    dihapus: json["dihapus"],
    nomorPesanan: json["nomor_pesanan"],
    pesananDibuatPada: json["pesanan_dibuat_pada"] == null
        ? null
        : DateTime.parse(json["pesanan_dibuat_pada"]),
    dataPenerima: json["data_penerima"] == null
        ? null
        : DataPenerima.fromMap(json["data_penerima"]),
    ongkir: json["ongkir"],
    subtotalProduk: json["subtotal_produk"],
    totalBayar: json["total_bayar"],
    rekening: json["rekening"] == null
        ? null
        : Rekening.fromMap(json["rekening"]),
    buktiPembayaran: json["bukti_pembayaran"],
    status: json["status"],
    catatan: json["catatan"],
    keterangan: json["keterangan"],
    items: json["items"] == null
        ? []
        : List<Item>.from(json["items"]!.map((x) => Item.fromMap(x))),
    informasiPengiriman: json["informasi_pengiriman"],
  );

  Map<String, dynamic> toMap() => {
    "pesanan_id": pesananId,
    "dihapus": dihapus,
    "nomor_pesanan": nomorPesanan,
    "pesanan_dibuat_pada": pesananDibuatPada?.toIso8601String(),
    "data_penerima": dataPenerima?.toMap(),
    "ongkir": ongkir,
    "subtotal_produk": subtotalProduk,
    "total_bayar": totalBayar,
    "rekening": rekening?.toMap(),
    "bukti_pembayaran": buktiPembayaran,
    "status": status,
    "catatan": catatan,
    "keterangan": keterangan,
    "items": items == null
        ? []
        : List<dynamic>.from(items!.map((x) => x.toMap())),
    "informasi_pengiriman": informasiPengiriman,
  };
}

class DataPenerima {
  final String? namaPenerima;
  final String? nomorTelepon;
  final String? alamat;
  final String? kabupatenTujuan;

  DataPenerima({
    this.namaPenerima,
    this.nomorTelepon,
    this.alamat,
    this.kabupatenTujuan,
  });

  factory DataPenerima.fromJson(String str) =>
      DataPenerima.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory DataPenerima.fromMap(Map<String, dynamic> json) => DataPenerima(
    namaPenerima: json["nama_penerima"],
    nomorTelepon: json["nomor_telepon"],
    alamat: json["alamat"],
    kabupatenTujuan: json["kabupaten_tujuan"],
  );

  Map<String, dynamic> toMap() => {
    "nama_penerima": namaPenerima,
    "nomor_telepon": nomorTelepon,
    "alamat": alamat,
    "kabupaten_tujuan": kabupatenTujuan,
  };
}

class Item {
  final int? item;
  final Produk? produk;

  Item({this.item, this.produk});

  factory Item.fromJson(String str) => Item.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Item.fromMap(Map<String, dynamic> json) => Item(
    item: json["item"],
    produk: json["produk"] == null ? null : Produk.fromMap(json["produk"]),
  );

  Map<String, dynamic> toMap() => {"item": item, "produk": produk?.toMap()};
}

class Produk {
  final int? produkId;
  final String? namaProduk;
  final int? varianId;
  final String? gambarVarian;
  final String? namaVarian;
  final int? harga;
  final int? kuantitas;
  final String? satuan;
  final int? subtotal;

  Produk({
    this.produkId,
    this.namaProduk,
    this.varianId,
    this.gambarVarian,
    this.namaVarian,
    this.harga,
    this.kuantitas,
    this.satuan,
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
    satuan: json["satuan"],
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
    "satuan": satuan,
    "subtotal": subtotal,
  };
}

class Rekening {
  final int? id;
  final String? namaBank;
  final String? nomorRekening;

  Rekening({this.id, this.namaBank, this.nomorRekening});

  factory Rekening.fromJson(String str) => Rekening.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Rekening.fromMap(Map<String, dynamic> json) => Rekening(
    id: json["id"],
    namaBank: json["nama_bank"],
    nomorRekening: json["nomor_rekening"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "nama_bank": namaBank,
    "nomor_rekening": nomorRekening,
  };
}
