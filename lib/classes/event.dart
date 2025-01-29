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
    required String ColorId,  //TODO 数字に対応した色を作成
    required DateTime startTime,
    required DateTime endTime,
    required List<Task> tasks,
    // required List<Attachment> attachments,
  }) = _Event;

  factory Event.fromJson(Map<String, Object?> json)
  => _$EventFromJson(json);
}

/* TODO 色対応をしておく
0 カレンダーの色
1 ラベンダー  #7986CB rgb(121, 134, 203)
2 セージ     #33B679 rgb(51, 182, 121)
3 ブドウ     #8E24AA rgb(142, 36, 170)
4 フラミンゴ  #E67C73 rgb(230, 124, 115)
5 バナナ     #F6BF26 rgb(246, 191, 38)
6 ミカン     #F4511E rgb(244, 81, 30)
7 ピーコック  #039BE5 rgb(3, 155, 229)
8 グラファイト #616161 rgb(97, 97, 97)
9 ブルーベリー #3F51B5 rgb(63, 81, 181)
10 バジル     #0B8043 rgb(11, 128, 67)
11 トマト     #D50000 rgb(213, 0, 0)
*/


// @freezed
// class Attachment with _$Attachment {
//   const factory Attachment({
//     required String fileId,
//     required String fileUrl,
//     required String title,
//     required String iconLink,
//   }) = _Attacgment;
// }
