// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'leave_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LeaveData _$$_LeaveDataFromJson(Map<String, dynamic> json) => _$_LeaveData(
      leaveBudget: json['leaveBudget'] as int,
      currentLeave: json['currentLeave'] as int,
      requestedLeave: json['requestedLeave'] as int,
      dateFrom: DateTime.parse(json['dateFrom'] as String),
      dateTo: DateTime.parse(json['dateTo'] as String),
      leaveCategory: json['leaveCategory'] as String,
      leaveDescription: json['leaveDescription'] as String,
      isPending: json['isPending'] as bool,
    );

Map<String, dynamic> _$$_LeaveDataToJson(_$_LeaveData instance) => <String, dynamic>{
      'leaveBudget': instance.leaveBudget,
      'currentLeave': instance.currentLeave,
      'requestedLeave': instance.requestedLeave,
      'dateFrom': instance.dateFrom.toIso8601String(),
      'dateTo': instance.dateTo.toIso8601String(),
      'leaveCategory': instance.leaveCategory,
      'leaveDescription': instance.leaveDescription,
      'isPending': instance.isPending,
    };
