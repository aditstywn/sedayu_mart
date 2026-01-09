import 'dart:convert';

class AddCartRequestModel {
  final int? produkId;
  final int? varianId;
  final int? kuantitas;

  AddCartRequestModel({this.produkId, this.varianId, this.kuantitas});
  factory AddCartRequestModel.fromJson(String str) =>
      AddCartRequestModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AddCartRequestModel.fromMap(Map<String, dynamic> json) =>
      AddCartRequestModel(
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
