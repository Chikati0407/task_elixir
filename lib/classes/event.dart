import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_elixir/classes/task.dart';

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
    required String ColorId,
    required DateTime startTime,
    required DateTime endTime,
    required List<Task> tasks,
    // required List<Attachment> attachments,
  }) = _Event;

  factory Event.fromJson(Map<String, Object?> json)
  => _$EventFromJson(json);
}

pickEventColor(String colorId) {
  const Map<String, int> colorMap = {
    "undefined": 0xFF000000, // 色指定なし
    "1": 0xFF7986CB,         // ラベンダー
    "2": 0xFF33B679,         // セージ
    "3": 0xFF8E24AA,         // ブドウ
    "4": 0xFFE67C73,         // フラミンゴ
    "5": 0xFFF6BF26,         // バナナ
    "6": 0xFFF4511E,         // ミカン
    "7": 0xFF039BE5,         // ピーコック
    "8": 0xFF616161,         // グラファイト
    "9": 0xFF3F51B5,         // ブルーベリー
    "10": 0xFF0B8043,        // バジル
    "11": 0xFFD50000,        // トマト
  };

  return colorMap[colorId];
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
