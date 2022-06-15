// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserData _$$_UserDataFromJson(Map<String, dynamic> json) => _$_UserData(
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
      email: json['email'] as String,
      imgUrl: json['imgUrl'] as String,
      address: json['address'] as Map<String, dynamic>,
      number: json['number'] as List<dynamic>,
      superiorEmail: json['superiorEmail'] as String,
    );

Map<String, dynamic> _$$_UserDataToJson(_$_UserData instance) => <String, dynamic>{
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'email': instance.email,
      'imgUrl': instance.imgUrl,
      'address': instance.address,
      'number': instance.number,
      'superiorEmail': instance.superiorEmail,
    };
