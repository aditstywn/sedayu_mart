import 'dart:convert';

class CityResponseModel {
  final bool? success;
  final String? message;
  final Data? data;

  CityResponseModel({this.success, this.message, this.data});

  factory CityResponseModel.fromJson(String str) =>
      CityResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CityResponseModel.fromMap(Map<String, dynamic> json) =>
      CityResponseModel(
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
  final List<String>? kabupaten;

  Data({this.user, this.kabupaten});

  factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Data.fromMap(Map<String, dynamic> json) => Data(
    user: json["user"] == null ? null : User.fromMap(json["user"]),
    kabupaten: json["kabupaten"] == null
        ? []
        : List<String>.from(json["kabupaten"]!.map((x) => x)),
  );

  Map<String, dynamic> toMap() => {
    "user": user?.toMap(),
    "kabupaten": kabupaten == null
        ? []
        : List<dynamic>.from(kabupaten!.map((x) => x)),
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
