import 'dart:convert';

class UpdateCartResponseModel {
  final bool? success;
  final String? message;
  final Data? data;

  UpdateCartResponseModel({this.success, this.message, this.data});

  factory UpdateCartResponseModel.fromJson(String str) =>
      UpdateCartResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory UpdateCartResponseModel.fromMap(Map<String, dynamic> json) =>
      UpdateCartResponseModel(
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
  final int? id;
  final Produk? produk;
  final Varian? varian;
  final int? kuantitas;
  final int? subtotal;

  Data({
    this.user,
    this.id,
    this.produk,
    this.varian,
    this.kuantitas,
    this.subtotal,
  });

  factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Data.fromMap(Map<String, dynamic> json) => Data(
    user: json["user"] == null ? null : User.fromMap(json["user"]),
    id: json["id"],
    produk: json["produk"] == null ? null : Produk.fromMap(json["produk"]),
    varian: json["varian"] == null ? null : Varian.fromMap(json["varian"]),
    kuantitas: json["kuantitas"],
    subtotal: json["subtotal"],
  );

  Map<String, dynamic> toMap() => {
    "user": user?.toMap(),
    "id": id,
    "produk": produk?.toMap(),
    "varian": varian?.toMap(),
    "kuantitas": kuantitas,
    "subtotal": subtotal,
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

class Varian {
  final int? id;
  final String? namaVarian;
  final int? harga;

  Varian({this.id, this.namaVarian, this.harga});

  factory Varian.fromJson(String str) => Varian.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Varian.fromMap(Map<String, dynamic> json) => Varian(
    id: json["id"],
    namaVarian: json["nama_varian"],
    harga: json["harga"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "nama_varian": namaVarian,
    "harga": harga,
  };
}
