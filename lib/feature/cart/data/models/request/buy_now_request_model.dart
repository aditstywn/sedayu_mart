import 'dart:convert';

class BuyNowRequestModel {
  final int? produkId;
  final int? varianId;
  final int? kuantitas;

  BuyNowRequestModel({this.produkId, this.varianId, this.kuantitas});

  factory BuyNowRequestModel.fromJson(String str) =>
      BuyNowRequestModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory BuyNowRequestModel.fromMap(Map<String, dynamic> json) =>
      BuyNowRequestModel(
        produkId: json["produk_id"],
        varianId: json["varian_id"],
        kuantitas: json["kuantitas"],
      );

  Map<String, dynamic> toMap() => {
    "produk_id": produkId,
    "varian_id": varianId,
    "kuantitas": kuantitas,
  };
}
