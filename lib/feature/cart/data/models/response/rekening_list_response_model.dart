import 'dart:convert';

class RekeningListResponseModel {
  final bool? success;
  final String? message;
  final Data? data;

  RekeningListResponseModel({this.success, this.message, this.data});

  factory RekeningListResponseModel.fromJson(String str) =>
      RekeningListResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory RekeningListResponseModel.fromMap(Map<String, dynamic> json) =>
      RekeningListResponseModel(
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
  final List<Rekening>? rekenings;

  Data({this.rekenings});

  factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Data.fromMap(Map<String, dynamic> json) => Data(
    rekenings: json["rekenings"] == null
        ? []
        : List<Rekening>.from(
            json["rekenings"]!.map((x) => Rekening.fromMap(x)),
          ),
  );

  Map<String, dynamic> toMap() => {
    "rekenings": rekenings == null
        ? []
        : List<dynamic>.from(rekenings!.map((x) => x.toMap())),
  };
}

class Rekening {
  final int? id;
  final String? namaBank;
  final String? nomorRekening;
  final String? atasNama;

  Rekening({this.id, this.namaBank, this.nomorRekening, this.atasNama});

  factory Rekening.fromJson(String str) => Rekening.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Rekening.fromMap(Map<String, dynamic> json) => Rekening(
    id: json["id"],
    namaBank: json["nama_bank"],
    nomorRekening: json["nomor_rekening"],
    atasNama: json["atas_nama"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "nama_bank": namaBank,
    "nomor_rekening": nomorRekening,
    "atas_nama": atasNama,
  };
}
