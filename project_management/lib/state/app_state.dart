import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_management/models/superior_data/superior_data.dart';
import 'package:project_management/models/user_data/user_data.dart';

part 'app_state.freezed.dart';
part 'app_state.g.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    required List<UserData> user,
    required List<SuperiorData> superiodData,
  }) = _AppState;

  factory AppState.initialState() => const AppState(
        user: <UserData>[],
        superiodData: <SuperiorData>[],
      );

  factory AppState.fromJson(Map<String, dynamic> json) => _$AppStateFromJson(json);
}
