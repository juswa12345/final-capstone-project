// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'superior_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SuperiorData _$$_SuperiorDataFromJson(Map<String, dynamic> json) =>
    _$_SuperiorData(
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
      email: json['email'] as String,
      imgUrl: json['imgUrl'] as String,
      address: json['address'] as Map<String, dynamic>,
      number: json['number'] as List<dynamic>,
    );

Map<String, dynamic> _$$_SuperiorDataToJson(_$_SuperiorData instance) =>
    <String, dynamic>{
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'email': instance.email,
      'imgUrl': instance.imgUrl,
      'address': instance.address,
      'number': instance.number,
    };
