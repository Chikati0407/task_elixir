// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventImpl _$$EventImplFromJson(Map<String, dynamic> json) => _$EventImpl(
      id: json['id'] as String,
      htmlLink: json['htmlLink'] as String,
      summary: json['summary'] as String,
      description: json['description'] as String,
      location: json['location'] as String,
      ColorId: json['ColorId'] as String,
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: DateTime.parse(json['endTime'] as String),
    );

Map<String, dynamic> _$$EventImplToJson(_$EventImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'htmlLink': instance.htmlLink,
      'summary': instance.summary,
      'description': instance.description,
      'location': instance.location,
      'ColorId': instance.ColorId,
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime.toIso8601String(),
    };
