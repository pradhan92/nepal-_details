// To parse this JSON data, do
//
//     final districtModel = districtModelFromJson(jsonString);

import 'dart:convert';

List<DistrictModel> districtModelFromJson(String str) =>
    List<DistrictModel>.from(
        json.decode(str).map((x) => DistrictModel.fromJson(x)));

String districtModelToJson(List<DistrictModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DistrictModel {
  DistrictModel({
    this.id,
    this.districtModelId,
    this.title,
    this.titleEn,
    this.titleNe,
    this.code,
    this.province,
  });

  String? id;
  int? districtModelId;
  List<double>? bbox;
  String? title;
  String? titleEn;
  String? titleNe;
  String? code;
  int? province;

  factory DistrictModel.fromJson(Map<String, dynamic> json) => DistrictModel(
        id: json["_id"],
        districtModelId: json["id"],
        title: json["title"],
        titleEn: json["title_en"],
        titleNe: json["title_ne"],
        code: json["code"],
        province: json["province"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "id": districtModelId,
        "title": title,
        "title_en": titleEn,
        "title_ne": titleNe,
        "code": code,
        "province": province,
      };
}

enum Type { POINT }

final typeValues = EnumValues({"Point": Type.POINT});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap!;
  }
}
