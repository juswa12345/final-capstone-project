import 'package:freezed_annotation/freezed_annotation.dart';

part 'superior_data.freezed.dart';
part 'superior_data.g.dart';

@freezed
class SuperiorData with _$SuperiorData {
  factory SuperiorData({
    required String firstname,
    required String lastname,
    required String email,
    required String imgUrl,
    required Map<String, dynamic> address,
    required List<dynamic> number,
  }) = _SuperiorData;

  factory SuperiorData.fromJson(Map<String, dynamic> json) => _$SuperiorDataFromJson(json);
}
