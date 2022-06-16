// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'superior_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SuperiorData _$SuperiorDataFromJson(Map<String, dynamic> json) {
  return _SuperiorData.fromJson(json);
}

/// @nodoc
mixin _$SuperiorData {
  String get firstname => throw _privateConstructorUsedError;
  String get lastname => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get imgUrl => throw _privateConstructorUsedError;
  Map<String, dynamic> get address => throw _privateConstructorUsedError;
  List<dynamic> get number => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SuperiorDataCopyWith<SuperiorData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuperiorDataCopyWith<$Res> {
  factory $SuperiorDataCopyWith(
          SuperiorData value, $Res Function(SuperiorData) then) =
      _$SuperiorDataCopyWithImpl<$Res>;
  $Res call(
      {String firstname,
      String lastname,
      String email,
      String imgUrl,
      Map<String, dynamic> address,
      List<dynamic> number});
}

/// @nodoc
class _$SuperiorDataCopyWithImpl<$Res> implements $SuperiorDataCopyWith<$Res> {
  _$SuperiorDataCopyWithImpl(this._value, this._then);

  final SuperiorData _value;
  // ignore: unused_field
  final $Res Function(SuperiorData) _then;

  @override
  $Res call({
    Object? firstname = freezed,
    Object? lastname = freezed,
    Object? email = freezed,
    Object? imgUrl = freezed,
    Object? address = freezed,
    Object? number = freezed,
  }) {
    return _then(_value.copyWith(
      firstname: firstname == freezed
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: lastname == freezed
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      imgUrl: imgUrl == freezed
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$$_SuperiorDataCopyWith<$Res>
    implements $SuperiorDataCopyWith<$Res> {
  factory _$$_SuperiorDataCopyWith(
          _$_SuperiorData value, $Res Function(_$_SuperiorData) then) =
      __$$_SuperiorDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String firstname,
      String lastname,
      String email,
      String imgUrl,
      Map<String, dynamic> address,
      List<dynamic> number});
}

/// @nodoc
class __$$_SuperiorDataCopyWithImpl<$Res>
    extends _$SuperiorDataCopyWithImpl<$Res>
    implements _$$_SuperiorDataCopyWith<$Res> {
  __$$_SuperiorDataCopyWithImpl(
      _$_SuperiorData _value, $Res Function(_$_SuperiorData) _then)
      : super(_value, (v) => _then(v as _$_SuperiorData));

  @override
  _$_SuperiorData get _value => super._value as _$_SuperiorData;

  @override
  $Res call({
    Object? firstname = freezed,
    Object? lastname = freezed,
    Object? email = freezed,
    Object? imgUrl = freezed,
    Object? address = freezed,
    Object? number = freezed,
  }) {
    return _then(_$_SuperiorData(
      firstname: firstname == freezed
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: lastname == freezed
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      imgUrl: imgUrl == freezed
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value._address
          : address // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      number: number == freezed
          ? _value._number
          : number // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SuperiorData implements _SuperiorData {
  _$_SuperiorData(
      {required this.firstname,
      required this.lastname,
      required this.email,
      required this.imgUrl,
      required final Map<String, dynamic> address,
      required final List<dynamic> number})
      : _address = address,
        _number = number;

  factory _$_SuperiorData.fromJson(Map<String, dynamic> json) =>
      _$$_SuperiorDataFromJson(json);

  @override
  final String firstname;
  @override
  final String lastname;
  @override
  final String email;
  @override
  final String imgUrl;
  final Map<String, dynamic> _address;
  @override
  Map<String, dynamic> get address {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_address);
  }

  final List<dynamic> _number;
  @override
  List<dynamic> get number {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_number);
  }

  @override
  String toString() {
    return 'SuperiorData(firstname: $firstname, lastname: $lastname, email: $email, imgUrl: $imgUrl, address: $address, number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuperiorData &&
            const DeepCollectionEquality().equals(other.firstname, firstname) &&
            const DeepCollectionEquality().equals(other.lastname, lastname) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.imgUrl, imgUrl) &&
            const DeepCollectionEquality().equals(other._address, _address) &&
            const DeepCollectionEquality().equals(other._number, _number));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(firstname),
      const DeepCollectionEquality().hash(lastname),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(imgUrl),
      const DeepCollectionEquality().hash(_address),
      const DeepCollectionEquality().hash(_number));

  @JsonKey(ignore: true)
  @override
  _$$_SuperiorDataCopyWith<_$_SuperiorData> get copyWith =>
      __$$_SuperiorDataCopyWithImpl<_$_SuperiorData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SuperiorDataToJson(this);
  }
}

abstract class _SuperiorData implements SuperiorData {
  factory _SuperiorData(
      {required final String firstname,
      required final String lastname,
      required final String email,
      required final String imgUrl,
      required final Map<String, dynamic> address,
      required final List<dynamic> number}) = _$_SuperiorData;

  factory _SuperiorData.fromJson(Map<String, dynamic> json) =
      _$_SuperiorData.fromJson;

  @override
  String get firstname => throw _privateConstructorUsedError;
  @override
  String get lastname => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get imgUrl => throw _privateConstructorUsedError;
  @override
  Map<String, dynamic> get address => throw _privateConstructorUsedError;
  @override
  List<dynamic> get number => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SuperiorDataCopyWith<_$_SuperiorData> get copyWith =>
      throw _privateConstructorUsedError;
}
