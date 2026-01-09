import 'dart:convert';

class LoginResponseModel {
  final bool? success;
  final String? message;
  final String? accessToken;
  final String? tokenType;
  final DataUser? data;

  LoginResponseModel({
    this.success,
    this.message,
    this.accessToken,
    this.tokenType,
    this.data,
  });

  factory LoginResponseModel.fromJson(String str) =>
      LoginResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory LoginResponseModel.fromMap(Map<String, dynamic> json) =>
      LoginResponseModel(
        success: json["success"],
        message: json["message"],
        accessToken: json["access_token"],
        tokenType: json["token_type"],
        data: json["data"] == null ? null : DataUser.fromMap(json["data"]),
      );

  Map<String, dynamic> toMap() => {
    "success": success,
    "message": message,
    "access_token": accessToken,
    "token_type": tokenType,
    "data": data?.toMap(),
  };
}

class DataUser {
  final int? id;
  final String? nama;
  final String? email;
  final String? role;

  DataUser({this.id, this.nama, this.email, this.role});

  factory DataUser.fromJson(String str) => DataUser.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory DataUser.fromMap(Map<String, dynamic> json) => DataUser(
    id: json["id"],
    nama: json["nama"],
    email: json["email"],
    role: json["role"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "nama": nama,
    "email": email,
    "role": role,
  };
}
