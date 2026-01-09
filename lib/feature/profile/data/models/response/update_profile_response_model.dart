import 'dart:convert';

class UpdateProfileResponseModel {
  final bool? success;
  final String? message;
  final Data? data;

  UpdateProfileResponseModel({this.success, this.message, this.data});

  factory UpdateProfileResponseModel.fromJson(String str) =>
      UpdateProfileResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory UpdateProfileResponseModel.fromMap(Map<String, dynamic> json) =>
      UpdateProfileResponseModel(
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
  final int? id;
  final String? nama;
  final String? alamat;
  final String? kabupaten;
  final String? nomorTelepon;
  final String? role;
  final dynamic googleId;
  final String? email;
  final DateTime? emailVerifiedAt;
  final dynamic googleToken;
  final dynamic googleRefreshToken;
  final dynamic avatar;
  final String? status;
  final int? onboarded;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Data({
    this.id,
    this.nama,
    this.alamat,
    this.kabupaten,
    this.nomorTelepon,
    this.role,
    this.googleId,
    this.email,
    this.emailVerifiedAt,
    this.googleToken,
    this.googleRefreshToken,
    this.avatar,
    this.status,
    this.onboarded,
    this.createdAt,
    this.updatedAt,
  });

  factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Data.fromMap(Map<String, dynamic> json) => Data(
    id: json["id"],
    nama: json["nama"],
    alamat: json["alamat"],
    kabupaten: json["kabupaten"],
    nomorTelepon: json["nomor_telepon"],
    role: json["role"],
    googleId: json["google_id"],
    email: json["email"],
    emailVerifiedAt: json["email_verified_at"] == null
        ? null
        : DateTime.parse(json["email_verified_at"]),
    googleToken: json["google_token"],
    googleRefreshToken: json["google_refresh_token"],
    avatar: json["avatar"],
    status: json["status"],
    onboarded: json["onboarded"],
    createdAt: json["created_at"] == null
        ? null
        : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null
        ? null
        : DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "nama": nama,
    "alamat": alamat,
    "kabupaten": kabupaten,
    "nomor_telepon": nomorTelepon,
    "role": role,
    "google_id": googleId,
    "email": email,
    "email_verified_at": emailVerifiedAt?.toIso8601String(),
    "google_token": googleToken,
    "google_refresh_token": googleRefreshToken,
    "avatar": avatar,
    "status": status,
    "onboarded": onboarded,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
  };
}
