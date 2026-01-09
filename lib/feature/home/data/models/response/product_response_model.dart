import 'dart:convert';

class ProductResponseModel {
  final bool? success;
  final String? message;
  final Data? data;

  ProductResponseModel({this.success, this.message, this.data});

  factory ProductResponseModel.fromJson(String str) =>
      ProductResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ProductResponseModel.fromMap(Map<String, dynamic> json) =>
      ProductResponseModel(
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
  final User? user;
  final dynamic search;
  final List<Produk>? produk;

  Data({this.user, this.search, this.produk});

  factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Data.fromMap(Map<String, dynamic> json) => Data(
    user: json["user"] == null ? null : User.fromMap(json["user"]),
    search: json["search"],
    produk: json["produk"] == null
        ? []
        : List<Produk>.from(json["produk"]!.map((x) => Produk.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "user": user?.toMap(),
    "search": search,
    "produk": produk == null
        ? []
        : List<dynamic>.from(produk!.map((x) => x.toMap())),
  };
}

class Produk {
  final int? id;
  final String? nama;
  final int? stok;
  final String? satuan;
  final String? gambarUtama;
  final VarianDefault? varianDefault;

  Produk({
    this.id,
    this.nama,
    this.stok,
    this.satuan,
    this.gambarUtama,
    this.varianDefault,
  });

  factory Produk.fromJson(String str) => Produk.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Produk.fromMap(Map<String, dynamic> json) => Produk(
    id: json["id"],
    nama: json["nama"],
    stok: json["stok"],
    satuan: json["satuan"],
    gambarUtama: json["gambar_utama"],
    varianDefault: json["varian_default"] == null
        ? null
        : VarianDefault.fromMap(json["varian_default"]),
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "nama": nama,
    "gambar_utama": gambarUtama,
    "varian_default": varianDefault?.toMap(),
  };
}

class VarianDefault {
  final int? id;
  final String? nama;
  final int? harga;
  final int? stok;

  VarianDefault({this.id, this.nama, this.harga, this.stok});

  factory VarianDefault.fromJson(String str) =>
      VarianDefault.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory VarianDefault.fromMap(Map<String, dynamic> json) => VarianDefault(
    id: json["id"],
    nama: json["nama"],
    harga: json["harga"],
    stok: json["stok"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "nama": nama,
    "harga": harga,
    "stok": stok,
  };
}

class User {
  final int? id;
  final String? nama;

  User({this.id, this.nama});

  factory User.fromJson(String str) => User.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory User.fromMap(Map<String, dynamic> json) =>
      User(id: json["id"], nama: json["nama"]);

  Map<String, dynamic> toMap() => {"id": id, "nama": nama};
}
