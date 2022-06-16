import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data.freezed.dart';
part 'user_data.g.dart';

@freezed
class UserData with _$UserData {
  factory UserData({
    required String firstname,
    required String lastname,
    required String email,
    required String imgUrl,
    required Map<String, dynamic> address,
    required List<dynamic> number,
    required String superiorEmail,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) => _$UserDataFromJson(json);
}
