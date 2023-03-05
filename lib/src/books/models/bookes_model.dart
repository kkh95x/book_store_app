// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

// required: associates our `` with the code generated by Freezed
part 'bookes_model.freezed.dart';
// optional: Since our Person class is serializable, we must add this line.
// But if Person was not serializable, we could skip it.
part 'bookes_model.g.dart';

@freezed
class BookeModel with _$BookeModel {
  const factory BookeModel({
    String? author,
    String? id,
     String? section,
     String? imageUrl,
     String? name,
     String? publisher,
     String? language,
    DateTime? releaseDate,
    int? pages,
    String? fileSize,
    double? price,
  }) = _BookeModel;

  factory BookeModel.fromJson(Map<String, Object?> json)
      => _$BookeModelFromJson(json);
}