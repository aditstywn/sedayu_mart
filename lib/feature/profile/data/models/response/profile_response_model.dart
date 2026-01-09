import 'dart:convert';

class ProfileResponseModel {
  final bool? success;
  final String? message;
  final Data? data;

  ProfileResponseModel({this.success, this.message, this.data});

  factory ProfileResponseModel.fromJson(String str) =>
      ProfileResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ProfileResponseModel.fromMap(Map<String, dynamic> json) =>
      ProfileResponseModel(
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
  final DataProfil? profil;

  Data({this.profil});

  factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Data.fromMap(Map<String, dynamic> json) => Data(
    profil: json["profil"] == null ? null : DataProfil.fromMap(json["profil"]),
  );

  Map<String, dynamic> toMap() => {"profil": profil?.toMap()};
}

class DataProfil {
  final ProfilProfil? profil;
  final StatistikPesanan? statistikPesanan;

  DataProfil({this.profil, this.statistikPesanan});

  factory DataProfil.fromJson(String str) =>
      DataProfil.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory DataProfil.fromMap(Map<String, dynamic> json) => DataProfil(
    profil: json["profil"] == null
        ? null
        : ProfilProfil.fromMap(json["profil"]),
    statistikPesanan: json["statistik_pesanan"] == null
        ? null
        : StatistikPesanan.fromMap(json["statistik_pesanan"]),
  );

  Map<String, dynamic> toMap() => {
    "profil": profil?.toMap(),
    "statistik_pesanan": statistikPesanan?.toMap(),
  };
}

class ProfilProfil {
  final int? id;
  final String? nama;
  final String? email;
  final String? alamat;
  final String? kabupaten;
  final String? nomorTelepon;
  final dynamic avatar;

  ProfilProfil({
    this.id,
    this.nama,
    this.email,
    this.alamat,
    this.kabupaten,
    this.nomorTelepon,
    this.avatar,
  });

  factory ProfilProfil.fromJson(String str) =>
      ProfilProfil.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ProfilProfil.fromMap(Map<String, dynamic> json) => ProfilProfil(
    id: json["id"],
    nama: json["nama"],
    email: json["email"],
    alamat: json["alamat"],
    kabupaten: json["kabupaten"],
    nomorTelepon: json["nomor_telepon"],
    avatar: json["avatar"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "nama": nama,
    "email": email,
    "alamat": alamat,
    "kabupaten": kabupaten,
    "nomor_telepon": nomorTelepon,
    "avatar": avatar,
  };
}

class StatistikPesanan {
  final int? totalPesanan;
  final int? pesananDikirim;
  final int? pesananSelesai;

  StatistikPesanan({
    this.totalPesanan,
    this.pesananDikirim,
    this.pesananSelesai,
  });

  factory StatistikPesanan.fromJson(String str) =>
      StatistikPesanan.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory StatistikPesanan.fromMap(Map<String, dynamic> json) =>
      StatistikPesanan(
        totalPesanan: json["total_pesanan"],
        pesananDikirim: json["pesanan_dikirim"],
        pesananSelesai: json["pesanan_selesai"],
      );

  Map<String, dynamic> toMap() => {
    "total_pesanan": totalPesanan,
    "pesanan_dikirim": pesananDikirim,
    "pesanan_selesai": pesananSelesai,
  };
}
