import 'package:freezed_annotation/freezed_annotation.dart';

part 'pause.freezed.dart';
part 'pause.g.dart';

@freezed
class Pause with _$Pause {
  factory Pause({
    required String category,
    required DateTime timeStart,
    required DateTime timeStop,
    required String remarks,
  }) = _Pause;

  factory Pause.fromJson(Map<String, dynamic> json) => _$PauseFromJson(json);
}
