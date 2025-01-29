// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskImpl _$$TaskImplFromJson(Map<String, dynamic> json) => _$TaskImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      notes: json['notes'] as String,
      status: json['status'] as String,
      due: DateTime.parse(json['due'] as String),
      links: (json['links'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$TaskImplToJson(_$TaskImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'notes': instance.notes,
      'status': instance.status,
      'due': instance.due.toIso8601String(),
      'links': instance.links,
    };
