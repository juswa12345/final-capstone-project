import 'package:freezed_annotation/freezed_annotation.dart';

part 'time_track_data.freezed.dart';
part 'time_track_data.g.dart';

@freezed
class TimeTrackData with _$TimeTrackData {
  factory TimeTrackData({
    required String category,
    required String projectId,
    required String employee,
    required String remarks,
    required DateTime timeStart,
    required DateTime timeStop,
  }) = _TimeTrackData;

  factory TimeTrackData.fromJson(Map<String, dynamic> json) => _$TimeTrackDataFromJson(json);
}
