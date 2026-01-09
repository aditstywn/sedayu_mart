import 'dart:convert';

class UpdateCartRequestModel {
  final int? id;
  final int? count;

  UpdateCartRequestModel({this.id, this.count});

  factory UpdateCartRequestModel.fromJson(String str) =>
      UpdateCartRequestModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory UpdateCartRequestModel.fromMap(Map<String, dynamic> json) =>
      UpdateCartRequestModel(id: json["id"], count: json["count"]);

  Map<String, dynamic> toMap() => {"id": id, "count": count};
}
