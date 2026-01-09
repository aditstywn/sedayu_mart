import 'dart:convert';

class ShippingAddressResponseModel {
  final bool? success;
  final String? message;
  final Data? data;

  ShippingAddressResponseModel({this.success, this.message, this.data});

  factory ShippingAddressResponseModel.fromJson(String str) =>
      ShippingAddressResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ShippingAddressResponseModel.fromMap(Map<String, dynamic> json) =>
      ShippingAddressResponseModel(
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
  final List<AlamatPengiriman>? alamatPengiriman;

  Data({this.user, this.alamatPengiriman});

  factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Data.fromMap(Map<String, dynamic> json) => Data(
    user: json["user"] == null ? null : User.fromMap(json["user"]),
    alamatPengiriman: json["alamat_pengiriman"] == null
        ? []
        : List<AlamatPengiriman>.from(
            json["alamat_pengiriman"]!.map((x) => AlamatPengiriman.fromMap(x)),
          ),
  );

  Map<String, dynamic> toMap() => {
    "user": user?.toMap(),
    "alamat_pengiriman": alamatPengiriman == null
        ? []
        : List<dynamic>.from(alamatPengiriman!.map((x) => x.toMap())),
  };
}

class AlamatPengiriman {
  final int? id;
  final int? userId;
  final String? namaPenerima;
  final String? nomorTelepon;
  final String? alamat;
  final String? kabupaten;
  final String? provinsi;
  final String? kodePos;
  final dynamic keterangan;
  final int? utama;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  AlamatPengiriman({
    this.id,
    this.userId,
    this.namaPenerima,
    this.nomorTelepon,
    this.alamat,
    this.kabupaten,
    this.provinsi,
    this.kodePos,
    this.keterangan,
    this.utama,
    this.createdAt,
    this.updatedAt,
  });

  factory AlamatPengiriman.fromJson(String str) =>
      AlamatPengiriman.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AlamatPengiriman.fromMap(Map<String, dynamic> json) =>
      AlamatPengiriman(
        id: json["id"],
        userId: json["user_id"],
        namaPenerima: json["nama_penerima"],
        nomorTelepon: json["nomor_telepon"],
        alamat: json["alamat"],
        kabupaten: json["kabupaten"],
        provinsi: json["provinsi"],
        kodePos: json["kode_pos"],
        keterangan: json["keterangan"],
        utama: json["utama"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toMap() => {
    "id": id,
    "user_id": userId,
    "nama_penerima": namaPenerima,
    "nomor_telepon": nomorTelepon,
    "alamat": alamat,
    "kabupaten": kabupaten,
    "provinsi": provinsi,
    "kode_pos": kodePos,
    "keterangan": keterangan,
    "utama": utama,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
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
