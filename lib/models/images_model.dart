import 'package:json_annotation/json_annotation.dart';

import 'hits_model.dart';
part 'images_model.g.dart';
@JsonSerializable(explicitToJson: true)
class ImagesModel {
  int? total;
  int? totalHits;
  List<Hits>? hits;

  ImagesModel({this.total, this.totalHits, this.hits});
  factory ImagesModel.fromJson(Map<String,dynamic>data)=>_$ImagesModelFromJson(data);
  Map<String,dynamic> toJson()=>_$ImagesModelToJson(this);
//   ImagesModel.fromJson(Map<String, dynamic> json) {
//     total = json['total'];
//     totalHits = json['totalHits'];
//     if (json['hits'] != null) {
//       hits = <Hits>[];
//       json['hits'].forEach((v) {
//         hits!.add(new Hits.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['total'] = this.total;
//     data['totalHits'] = this.totalHits;
//     if (this.hits != null) {
//       data['hits'] = this.hits!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
}

