import 'dart:convert';

class DetailProductResponseModel {
  final bool? success;
  final String? message;
  final Data? data;

  DetailProductResponseModel({this.success, this.message, this.data});

  factory DetailProductResponseModel.fromJson(String str) =>
      DetailProductResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory DetailProductResponseModel.fromMap(Map<String, dynamic> json) =>
      DetailProductResponseModel(
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
  final Produk? produk;

  Data({this.user, this.produk});

  factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Data.fromMap(Map<String, dynamic> json) => Data(
    user: json["user"] == null ? null : User.fromMap(json["user"]),
    produk: json["produk"] == null ? null : Produk.fromMap(json["produk"]),
  );

  Map<String, dynamic> toMap() => {
    "user": user?.toMap(),
    "produk": produk?.toMap(),
  };
}

class Produk {
  final int? id;
  final String? nama;
  final String? deskripsi;
  final List<GambarProduk>? gambarProduks;
  final List<Varian>? varians;

  Produk({
    this.id,
    this.nama,
    this.deskripsi,
    this.gambarProduks,
    this.varians,
  });

  factory Produk.fromJson(String str) => Produk.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Produk.fromMap(Map<String, dynamic> json) => Produk(
    id: json["id"],
    nama: json["nama"],
    deskripsi: json["deskripsi"],
    gambarProduks: json["gambar_produks"] == null
        ? []
        : List<GambarProduk>.from(
            json["gambar_produks"]!.map((x) => GambarProduk.fromMap(x)),
          ),
    varians: json["varians"] == null
        ? []
        : List<Varian>.from(json["varians"]!.map((x) => Varian.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "nama": nama,
    "deskripsi": deskripsi,
    "gambar_produks": gambarProduks == null
        ? []
        : List<dynamic>.from(gambarProduks!.map((x) => x.toMap())),
    "varians": varians == null
        ? []
        : List<dynamic>.from(varians!.map((x) => x.toMap())),
  };
}

class GambarProduk {
  final int? id;
  final String? gambar;

  GambarProduk({this.id, this.gambar});

  factory GambarProduk.fromJson(String str) =>
      GambarProduk.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory GambarProduk.fromMap(Map<String, dynamic> json) =>
      GambarProduk(id: json["id"], gambar: json["gambar"]);

  Map<String, dynamic> toMap() => {"id": id, "gambar": gambar};
}

class Varian {
  final int? id;
  final String? nama;
  final int? harga;
  final int? stok;
  final String? gambar;
  final String? satuan;

  Varian({this.id, this.nama, this.harga, this.stok, this.gambar, this.satuan});

  factory Varian.fromJson(String str) => Varian.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Varian.fromMap(Map<String, dynamic> json) => Varian(
    id: json["id"],
    nama: json["nama"],
    harga: json["harga"],
    stok: json["stok"],
    gambar: json["gambar"],
    satuan: json["satuan"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "nama": nama,
    "harga": harga,
    "stok": stok,
    "gambar": gambar,
    "satuan": satuan,
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
