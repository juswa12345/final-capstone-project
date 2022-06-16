// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'time_track_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TimeTrackData _$$_TimeTrackDataFromJson(Map<String, dynamic> json) => _$_TimeTrackData(
      category: json['category'] as String,
      projectId: json['projectId'] as String,
      employee: json['employee'] as String,
      remarks: json['remarks'] as String,
      timeStart: DateTime.parse(json['timeStart'] as String),
      timeStop: DateTime.parse(json['timeStop'] as String),
    );

Map<String, dynamic> _$$_TimeTrackDataToJson(_$_TimeTrackData instance) => <String, dynamic>{
      'category': instance.category,
      'projectId': instance.projectId,
      'employee': instance.employee,
      'remarks': instance.remarks,
      'timeStart': instance.timeStart.toIso8601String(),
      'timeStop': instance.timeStop.toIso8601String(),
    };
