import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';
part 'event.g.dart';

@freezed
class Event with _$Event {
  const factory Event({
    required String id,
    required String htmlLink,
    required String summary,
    required String description,
    required String location,
    required String ColorId,  //TODO 数字に対応した色を作成
    required DateTime startTime,
    required DateTime endTime,
    // required List<Attachment> attachments,
  }) = _Event;

  factory Event.fromJson(Map<String, Object?> json)
  => _$EventFromJson(json);
}


// @freezed
// class Attachment with _$Attachment {
//   const factory Attachment({
//     required String fileId,
//     required String fileUrl,
//     required String title,
//     required String iconLink,
//   }) = _Attacgment;
// }
