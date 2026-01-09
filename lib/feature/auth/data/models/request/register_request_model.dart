import 'dart:convert';

class RegisterRequestModel {
  final String? nama;
  final String? alamat;
  final String? kabupaten;
  final String? nomorTelepon;
  final String? email;
  final String? password;
  final String? passwordConfirmation;

  RegisterRequestModel({
    this.nama,
    this.alamat,
    this.kabupaten,
    this.nomorTelepon,
    this.email,
    this.password,
    this.passwordConfirmation,
  });

  factory RegisterRequestModel.fromJson(String str) =>
      RegisterRequestModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory RegisterRequestModel.fromMap(Map<String, dynamic> json) =>
      RegisterRequestModel(
        nama: json["nama"],
        alamat: json["alamat"],
        kabupaten: json["kabupaten"],
        nomorTelepon: json["nomor_telepon"],
        email: json["email"],
        password: json["password"],
        passwordConfirmation: json["password_confirmation"],
      );

  Map<String, dynamic> toMap() => {
    "nama": nama,
    "alamat": alamat,
    "kabupaten": kabupaten,
    "nomor_telepon": nomorTelepon,
    "email": email,
    "password": password,
    "password_confirmation": passwordConfirmation,
  };
}
