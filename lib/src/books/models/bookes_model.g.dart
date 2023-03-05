// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'bookes_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BookeModel _$$_BookeModelFromJson(Map<String, dynamic> json) =>
    _$_BookeModel(
      author: json['author'] as String?,
      id: json['id'] as String?,
      section: json['section'] as String?,
      imageUrl: json['imageUrl'] as String?,
      name: json['name'] as String?,
      publisher: json['publisher'] as String?,
      language: json['language'] as String?,
      releaseDate: json['releaseDate'] == null
          ? null
          : DateTime.parse(json['releaseDate'] as String),
      pages: json['pages'] as int?,
      fileSize: json['fileSize'] as String?,
      price: (json['price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_BookeModelToJson(_$_BookeModel instance) =>
    <String, dynamic>{
      'author': instance.author,
      'id': instance.id,
      'section': instance.section,
      'imageUrl': instance.imageUrl,
      'name': instance.name,
      'publisher': instance.publisher,
      'language': instance.language,
      'releaseDate': instance.releaseDate?.toIso8601String(),
      'pages': instance.pages,
      'fileSize': instance.fileSize,
      'price': instance.price,
    };
