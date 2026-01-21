import 'dart:convert';

class ChangePasswordRequestModel {
  final String? passwordOld;
  final String? passwordNew;
  final String? passwordConfirmation;

  ChangePasswordRequestModel({
    this.passwordOld,
    this.passwordNew,
    this.passwordConfirmation,
  });

  factory ChangePasswordRequestModel.fromJson(String str) =>
      ChangePasswordRequestModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ChangePasswordRequestModel.fromMap(Map<String, dynamic> json) =>
      ChangePasswordRequestModel(
        passwordOld: json["old_password"],
        passwordNew: json["new_password"],
        passwordConfirmation: json["new_password_confirmation"],
      );

  Map<String, dynamic> toMap() => {
    "old_password": passwordOld,
    "new_password": passwordNew,
    "new_password_confirmation": passwordConfirmation,
  };
}
