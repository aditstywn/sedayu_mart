import 'dart:convert';

class LogoutResponseModel {
  final bool? success;
  final String? message;

  LogoutResponseModel({this.success, this.message});

  factory LogoutResponseModel.fromJson(String str) =>
      LogoutResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory LogoutResponseModel.fromMap(Map<String, dynamic> json) =>
      LogoutResponseModel(success: json["success"], message: json["message"]);

  Map<String, dynamic> toMap() => {"success": success, "message": message};
}
