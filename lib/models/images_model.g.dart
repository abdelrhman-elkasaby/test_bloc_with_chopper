// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'images_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImagesModel _$ImagesModelFromJson(Map<String, dynamic> json) => ImagesModel(
      total: json['total'] as int?,
      totalHits: json['totalHits'] as int?,
      hits: (json['hits'] as List<dynamic>?)
          ?.map((e) => Hits.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ImagesModelToJson(ImagesModel instance) =>
    <String, dynamic>{
      'total': instance.total,
      'totalHits': instance.totalHits,
      'hits': instance.hits?.map((e) => e.toJson()).toList(),
    };
