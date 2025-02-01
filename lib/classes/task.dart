import 'package:freezed_annotation/freezed_annotation.dart';

part 'task.freezed.dart';
part 'task.g.dart';

@freezed
class Task with _$Task {
  const factory Task ({
    required String id,
    required String title,
    required String notes,
    required String status,  //「needsAction」または「completed」
    required DateTime due,
    required List<String> links,
  }) = _Task;

  factory Task.fromJson(Map<String, Object?> json)
  => _$TaskFromJson(json);
}

