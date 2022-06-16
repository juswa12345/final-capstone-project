import 'package:freezed_annotation/freezed_annotation.dart';

part 'leave_data.freezed.dart';
part 'leave_data.g.dart';

@freezed
class LeaveData with _$LeaveData {
  factory LeaveData({
    required int leaveBudget,
    required int currentLeave,
    required int requestedLeave,
    required DateTime dateFrom,
    required DateTime dateTo,
    required String leaveCategory,
    required String leaveDescription,
    required bool isPending,
  }) = _LeaveData;

  factory LeaveData.fromJson(Map<String, dynamic> json) => _$LeaveDataFromJson(json);
}
