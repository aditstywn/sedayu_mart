import 'dart:convert';

class BuyCartRequestModel {
  final List<int>? ids;

  BuyCartRequestModel({this.ids});

  factory BuyCartRequestModel.fromJson(String str) =>
      BuyCartRequestModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory BuyCartRequestModel.fromMap(Map<String, dynamic> json) =>
      BuyCartRequestModel(
        ids: json["ids"] == null
            ? []
            : List<int>.from(json["ids"]!.map((x) => x)),
      );

  Map<String, dynamic> toMap() => {
    "ids": ids == null ? [] : List<dynamic>.from(ids!.map((x) => x)),
  };
}
