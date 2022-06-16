// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'pause.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Pause _$$_PauseFromJson(Map<String, dynamic> json) => _$_Pause(
      category: json['category'] as String,
      timeStart: DateTime.parse(json['timeStart'] as String),
      timeStop: DateTime.parse(json['timeStop'] as String),
      remarks: json['remarks'] as String,
    );

Map<String, dynamic> _$$_PauseToJson(_$_Pause instance) => <String, dynamic>{
      'category': instance.category,
      'timeStart': instance.timeStart.toIso8601String(),
      'timeStop': instance.timeStop.toIso8601String(),
      'remarks': instance.remarks,
    };
