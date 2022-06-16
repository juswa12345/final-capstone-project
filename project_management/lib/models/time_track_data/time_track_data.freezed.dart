// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'time_track_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TimeTrackData _$TimeTrackDataFromJson(Map<String, dynamic> json) {
  return _TimeTrackData.fromJson(json);
}

/// @nodoc
mixin _$TimeTrackData {
  String get category => throw _privateConstructorUsedError;
  String get projectId => throw _privateConstructorUsedError;
  String get employee => throw _privateConstructorUsedError;
  String get remarks => throw _privateConstructorUsedError;
  DateTime get timeStart => throw _privateConstructorUsedError;
  DateTime get timeStop => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeTrackDataCopyWith<TimeTrackData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeTrackDataCopyWith<$Res> {
  factory $TimeTrackDataCopyWith(
          TimeTrackData value, $Res Function(TimeTrackData) then) =
      _$TimeTrackDataCopyWithImpl<$Res>;
  $Res call(
      {String category,
      String projectId,
      String employee,
      String remarks,
      DateTime timeStart,
      DateTime timeStop});
}

/// @nodoc
class _$TimeTrackDataCopyWithImpl<$Res>
    implements $TimeTrackDataCopyWith<$Res> {
  _$TimeTrackDataCopyWithImpl(this._value, this._then);

  final TimeTrackData _value;
  // ignore: unused_field
  final $Res Function(TimeTrackData) _then;

  @override
  $Res call({
    Object? category = freezed,
    Object? projectId = freezed,
    Object? employee = freezed,
    Object? remarks = freezed,
    Object? timeStart = freezed,
    Object? timeStop = freezed,
  }) {
    return _then(_value.copyWith(
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      projectId: projectId == freezed
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
      employee: employee == freezed
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as String,
      remarks: remarks == freezed
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String,
      timeStart: timeStart == freezed
          ? _value.timeStart
          : timeStart // ignore: cast_nullable_to_non_nullable
              as DateTime,
      timeStop: timeStop == freezed
          ? _value.timeStop
          : timeStop // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_TimeTrackDataCopyWith<$Res>
    implements $TimeTrackDataCopyWith<$Res> {
  factory _$$_TimeTrackDataCopyWith(
          _$_TimeTrackData value, $Res Function(_$_TimeTrackData) then) =
      __$$_TimeTrackDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String category,
      String projectId,
      String employee,
      String remarks,
      DateTime timeStart,
      DateTime timeStop});
}

/// @nodoc
class __$$_TimeTrackDataCopyWithImpl<$Res>
    extends _$TimeTrackDataCopyWithImpl<$Res>
    implements _$$_TimeTrackDataCopyWith<$Res> {
  __$$_TimeTrackDataCopyWithImpl(
      _$_TimeTrackData _value, $Res Function(_$_TimeTrackData) _then)
      : super(_value, (v) => _then(v as _$_TimeTrackData));

  @override
  _$_TimeTrackData get _value => super._value as _$_TimeTrackData;

  @override
  $Res call({
    Object? category = freezed,
    Object? projectId = freezed,
    Object? employee = freezed,
    Object? remarks = freezed,
    Object? timeStart = freezed,
    Object? timeStop = freezed,
  }) {
    return _then(_$_TimeTrackData(
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      projectId: projectId == freezed
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
      employee: employee == freezed
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as String,
      remarks: remarks == freezed
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String,
      timeStart: timeStart == freezed
          ? _value.timeStart
          : timeStart // ignore: cast_nullable_to_non_nullable
              as DateTime,
      timeStop: timeStop == freezed
          ? _value.timeStop
          : timeStop // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TimeTrackData implements _TimeTrackData {
  _$_TimeTrackData(
      {required this.category,
      required this.projectId,
      required this.employee,
      required this.remarks,
      required this.timeStart,
      required this.timeStop});

  factory _$_TimeTrackData.fromJson(Map<String, dynamic> json) =>
      _$$_TimeTrackDataFromJson(json);

  @override
  final String category;
  @override
  final String projectId;
  @override
  final String employee;
  @override
  final String remarks;
  @override
  final DateTime timeStart;
  @override
  final DateTime timeStop;

  @override
  String toString() {
    return 'TimeTrackData(category: $category, projectId: $projectId, employee: $employee, remarks: $remarks, timeStart: $timeStart, timeStop: $timeStop)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimeTrackData &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.projectId, projectId) &&
            const DeepCollectionEquality().equals(other.employee, employee) &&
            const DeepCollectionEquality().equals(other.remarks, remarks) &&
            const DeepCollectionEquality().equals(other.timeStart, timeStart) &&
            const DeepCollectionEquality().equals(other.timeStop, timeStop));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(projectId),
      const DeepCollectionEquality().hash(employee),
      const DeepCollectionEquality().hash(remarks),
      const DeepCollectionEquality().hash(timeStart),
      const DeepCollectionEquality().hash(timeStop));

  @JsonKey(ignore: true)
  @override
  _$$_TimeTrackDataCopyWith<_$_TimeTrackData> get copyWith =>
      __$$_TimeTrackDataCopyWithImpl<_$_TimeTrackData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TimeTrackDataToJson(this);
  }
}

abstract class _TimeTrackData implements TimeTrackData {
  factory _TimeTrackData(
      {required final String category,
      required final String projectId,
      required final String employee,
      required final String remarks,
      required final DateTime timeStart,
      required final DateTime timeStop}) = _$_TimeTrackData;

  factory _TimeTrackData.fromJson(Map<String, dynamic> json) =
      _$_TimeTrackData.fromJson;

  @override
  String get category => throw _privateConstructorUsedError;
  @override
  String get projectId => throw _privateConstructorUsedError;
  @override
  String get employee => throw _privateConstructorUsedError;
  @override
  String get remarks => throw _privateConstructorUsedError;
  @override
  DateTime get timeStart => throw _privateConstructorUsedError;
  @override
  DateTime get timeStop => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TimeTrackDataCopyWith<_$_TimeTrackData> get copyWith =>
      throw _privateConstructorUsedError;
}
