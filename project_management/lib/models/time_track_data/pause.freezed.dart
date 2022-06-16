// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pause.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Pause _$PauseFromJson(Map<String, dynamic> json) {
  return _Pause.fromJson(json);
}

/// @nodoc
mixin _$Pause {
  String get category => throw _privateConstructorUsedError;
  DateTime get timeStart => throw _privateConstructorUsedError;
  DateTime get timeStop => throw _privateConstructorUsedError;
  String get remarks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PauseCopyWith<Pause> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PauseCopyWith<$Res> {
  factory $PauseCopyWith(Pause value, $Res Function(Pause) then) =
      _$PauseCopyWithImpl<$Res>;
  $Res call(
      {String category, DateTime timeStart, DateTime timeStop, String remarks});
}

/// @nodoc
class _$PauseCopyWithImpl<$Res> implements $PauseCopyWith<$Res> {
  _$PauseCopyWithImpl(this._value, this._then);

  final Pause _value;
  // ignore: unused_field
  final $Res Function(Pause) _then;

  @override
  $Res call({
    Object? category = freezed,
    Object? timeStart = freezed,
    Object? timeStop = freezed,
    Object? remarks = freezed,
  }) {
    return _then(_value.copyWith(
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      timeStart: timeStart == freezed
          ? _value.timeStart
          : timeStart // ignore: cast_nullable_to_non_nullable
              as DateTime,
      timeStop: timeStop == freezed
          ? _value.timeStop
          : timeStop // ignore: cast_nullable_to_non_nullable
              as DateTime,
      remarks: remarks == freezed
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_PauseCopyWith<$Res> implements $PauseCopyWith<$Res> {
  factory _$$_PauseCopyWith(_$_Pause value, $Res Function(_$_Pause) then) =
      __$$_PauseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String category, DateTime timeStart, DateTime timeStop, String remarks});
}

/// @nodoc
class __$$_PauseCopyWithImpl<$Res> extends _$PauseCopyWithImpl<$Res>
    implements _$$_PauseCopyWith<$Res> {
  __$$_PauseCopyWithImpl(_$_Pause _value, $Res Function(_$_Pause) _then)
      : super(_value, (v) => _then(v as _$_Pause));

  @override
  _$_Pause get _value => super._value as _$_Pause;

  @override
  $Res call({
    Object? category = freezed,
    Object? timeStart = freezed,
    Object? timeStop = freezed,
    Object? remarks = freezed,
  }) {
    return _then(_$_Pause(
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      timeStart: timeStart == freezed
          ? _value.timeStart
          : timeStart // ignore: cast_nullable_to_non_nullable
              as DateTime,
      timeStop: timeStop == freezed
          ? _value.timeStop
          : timeStop // ignore: cast_nullable_to_non_nullable
              as DateTime,
      remarks: remarks == freezed
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Pause implements _Pause {
  _$_Pause(
      {required this.category,
      required this.timeStart,
      required this.timeStop,
      required this.remarks});

  factory _$_Pause.fromJson(Map<String, dynamic> json) =>
      _$$_PauseFromJson(json);

  @override
  final String category;
  @override
  final DateTime timeStart;
  @override
  final DateTime timeStop;
  @override
  final String remarks;

  @override
  String toString() {
    return 'Pause(category: $category, timeStart: $timeStart, timeStop: $timeStop, remarks: $remarks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Pause &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.timeStart, timeStart) &&
            const DeepCollectionEquality().equals(other.timeStop, timeStop) &&
            const DeepCollectionEquality().equals(other.remarks, remarks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(timeStart),
      const DeepCollectionEquality().hash(timeStop),
      const DeepCollectionEquality().hash(remarks));

  @JsonKey(ignore: true)
  @override
  _$$_PauseCopyWith<_$_Pause> get copyWith =>
      __$$_PauseCopyWithImpl<_$_Pause>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PauseToJson(this);
  }
}

abstract class _Pause implements Pause {
  factory _Pause(
      {required final String category,
      required final DateTime timeStart,
      required final DateTime timeStop,
      required final String remarks}) = _$_Pause;

  factory _Pause.fromJson(Map<String, dynamic> json) = _$_Pause.fromJson;

  @override
  String get category => throw _privateConstructorUsedError;
  @override
  DateTime get timeStart => throw _privateConstructorUsedError;
  @override
  DateTime get timeStop => throw _privateConstructorUsedError;
  @override
  String get remarks => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PauseCopyWith<_$_Pause> get copyWith =>
      throw _privateConstructorUsedError;
}
