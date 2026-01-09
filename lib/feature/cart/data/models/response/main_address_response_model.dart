import 'dart:convert';

class MainAddressResponseModel {
  final bool? success;
  final String? message;
  final Data? data;

  MainAddressResponseModel({this.success, this.message, this.data});

  factory MainAddressResponseModel.fromJson(String str) =>
      MainAddressResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory MainAddressResponseModel.fromMap(Map<String, dynamic> json) =>
      MainAddressResponseModel(
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
  final AlamatUtama? alamatUtama;

  Data({this.alamatUtama});

  factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Data.fromMap(Map<String, dynamic> json) => Data(
    alamatUtama: json["alamat_utama"] == null
        ? null
        : AlamatUtama.fromMap(json["alamat_utama"]),
  );

  Map<String, dynamic> toMap() => {"alamat_utama": alamatUtama?.toMap()};
}

class AlamatUtama {
  final int? id;
  final int? userId;
  final String? namaPenerima;
  final String? nomorTelepon;
  final String? alamat;
  final String? kabupaten;
  final String? provinsi;
  final String? kodePos;
  final String? keterangan;
  final int? utama;

  AlamatUtama({
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
  });

  factory AlamatUtama.fromJson(String str) =>
      AlamatUtama.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AlamatUtama.fromMap(Map<String, dynamic> json) => AlamatUtama(
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
  };
}
