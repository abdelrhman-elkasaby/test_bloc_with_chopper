// class PostsModel {
//   int? userId;
//   int? id;
//   String? title;
//   String? body;
//
//   PostsModel({this.userId, this.id, this.title, this.body});
//
//   PostsModel.fromJson(Map<String, dynamic> json) {
//     userId = json['userId'];
//     id = json['id'];
//     title = json['title'];
//     body = json['body'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['userId'] = this.userId;
//     data['id'] = this.id;
//     data['title'] = this.title;
//     data['body'] = this.body;
//     return data;
//   }
// }
import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
part 'posts_model.g.dart';
//
// List<PostsModel> postsModelFromJson(String str) => List<PostsModel>.from(json.decode(str).map((x) => PostsModel.fromJson(x)));
//
// String postsModelToJson(List<PostsModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
@JsonSerializable()
class PostsModel {
  int? userId;
  int? id;
  String? title;
  String? body;
  PostsModel({
    this.userId,
    this.id,
    this.title,
    this.body,
  });
  factory PostsModel.fromJson(Map<String,dynamic>data)=>_$PostsModelFromJson(data);
  Map<String,dynamic> toJson()=>_$PostsModelToJson(this);

}
// factory PostsModel.fromJson(Map<String, dynamic> json) => PostsModel(
//   userId: json["userId"],
//   id: json["id"],
//   title: json["title"],
//   body: json["body"],
// );
//
// Map<String, dynamic> toJson() => {
//   "userId": userId,
//   "id": id,
//   "title": title,
//   "body": body,
// };