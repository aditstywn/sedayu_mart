import 'dart:convert';

class BuyCartResponseModel {
    final bool? success;
    final String? message;
    final Data? data;

    BuyCartResponseModel({
        this.success,
        this.message,
        this.data,
    });

    factory BuyCartResponseModel.fromJson(String str) => BuyCartResponseModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory BuyCartResponseModel.fromMap(Map<String, dynamic> json) => BuyCartResponseModel(
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
    final List<ProdukList>? produkList;
    final int? subtotalSemua;
    final int? ongkir;
    final int? totalBayar;

    Data({
        this.produkList,
        this.subtotalSemua,
        this.ongkir,
        this.totalBayar,
    });

    factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Data.fromMap(Map<String, dynamic> json) => Data(
        produkList: json["produkList"] == null ? [] : List<ProdukList>.from(json["produkList"]!.map((x) => ProdukList.fromMap(x))),
        subtotalSemua: json["subtotal_semua"],
        ongkir: json["ongkir"],
        totalBayar: json["total_bayar"],
    );

    Map<String, dynamic> toMap() => {
        "produkList": produkList == null ? [] : List<dynamic>.from(produkList!.map((x) => x.toMap())),
        "subtotal_semua": subtotalSemua,
        "ongkir": ongkir,
        "total_bayar": totalBayar,
    };
}

class ProdukList {
    final int? keranjangId;
    final Produk? produk;
    final int? kuantitas;
    final int? subtotal;

    ProdukList({
        this.keranjangId,
        this.produk,
        this.kuantitas,
        this.subtotal,
    });

    factory ProdukList.fromJson(String str) => ProdukList.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory ProdukList.fromMap(Map<String, dynamic> json) => ProdukList(
        keranjangId: json["keranjang_id"],
        produk: json["produk"] == null ? null : Produk.fromMap(json["produk"]),
        kuantitas: json["kuantitas"],
        subtotal: json["subtotal"],
    );

    Map<String, dynamic> toMap() => {
        "keranjang_id": keranjangId,
        "produk": produk?.toMap(),
        "kuantitas": kuantitas,
        "subtotal": subtotal,
    };
}

class Produk {
    final int? produkId;
    final String? namaProduk;
    final String? satuanProduk;
    final int? varianId;
    final String? gambarVarian;
    final String? namaVarian;
    final int? harga;
    final int? stokVarian;

    Produk({
        this.produkId,
        this.namaProduk,
        this.satuanProduk,
        this.varianId,
        this.gambarVarian,
        this.namaVarian,
        this.harga,
        this.stokVarian,
    });

    factory Produk.fromJson(String str) => Produk.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Produk.fromMap(Map<String, dynamic> json) => Produk(
        produkId: json["produk_id"],
        namaProduk: json["nama_produk"],
        satuanProduk: json["satuan_produk"],
        varianId: json["varian_id"],
        gambarVarian: json["gambar_varian"],
        namaVarian: json["nama_varian"],
        harga: json["harga"],
        stokVarian: json["stok_varian"],
    );

    Map<String, dynamic> toMap() => {
        "produk_id": produkId,
        "nama_produk": namaProduk,
        "satuan_produk": satuanProduk,
        "varian_id": varianId,
        "gambar_varian": gambarVarian,
        "nama_varian": namaVarian,
        "harga": harga,
        "stok_varian": stokVarian,
    };
}
