// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'leave_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LeaveData _$LeaveDataFromJson(Map<String, dynamic> json) {
  return _LeaveData.fromJson(json);
}

/// @nodoc
mixin _$LeaveData {
  int get leaveBudget => throw _privateConstructorUsedError;
  int get currentLeave => throw _privateConstructorUsedError;
  int get requestedLeave => throw _privateConstructorUsedError;
  DateTime get dateFrom => throw _privateConstructorUsedError;
  DateTime get dateTo => throw _privateConstructorUsedError;
  String get leaveCategory => throw _privateConstructorUsedError;
  String get leaveDescription => throw _privateConstructorUsedError;
  bool get isPending => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeaveDataCopyWith<LeaveData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaveDataCopyWith<$Res> {
  factory $LeaveDataCopyWith(LeaveData value, $Res Function(LeaveData) then) =
      _$LeaveDataCopyWithImpl<$Res>;
  $Res call(
      {int leaveBudget,
      int currentLeave,
      int requestedLeave,
      DateTime dateFrom,
      DateTime dateTo,
      String leaveCategory,
      String leaveDescription,
      bool isPending});
}

/// @nodoc
class _$LeaveDataCopyWithImpl<$Res> implements $LeaveDataCopyWith<$Res> {
  _$LeaveDataCopyWithImpl(this._value, this._then);

  final LeaveData _value;
  // ignore: unused_field
  final $Res Function(LeaveData) _then;

  @override
  $Res call({
    Object? leaveBudget = freezed,
    Object? currentLeave = freezed,
    Object? requestedLeave = freezed,
    Object? dateFrom = freezed,
    Object? dateTo = freezed,
    Object? leaveCategory = freezed,
    Object? leaveDescription = freezed,
    Object? isPending = freezed,
  }) {
    return _then(_value.copyWith(
      leaveBudget: leaveBudget == freezed
          ? _value.leaveBudget
          : leaveBudget // ignore: cast_nullable_to_non_nullable
              as int,
      currentLeave: currentLeave == freezed
          ? _value.currentLeave
          : currentLeave // ignore: cast_nullable_to_non_nullable
              as int,
      requestedLeave: requestedLeave == freezed
          ? _value.requestedLeave
          : requestedLeave // ignore: cast_nullable_to_non_nullable
              as int,
      dateFrom: dateFrom == freezed
          ? _value.dateFrom
          : dateFrom // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateTo: dateTo == freezed
          ? _value.dateTo
          : dateTo // ignore: cast_nullable_to_non_nullable
              as DateTime,
      leaveCategory: leaveCategory == freezed
          ? _value.leaveCategory
          : leaveCategory // ignore: cast_nullable_to_non_nullable
              as String,
      leaveDescription: leaveDescription == freezed
          ? _value.leaveDescription
          : leaveDescription // ignore: cast_nullable_to_non_nullable
              as String,
      isPending: isPending == freezed
          ? _value.isPending
          : isPending // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_LeaveDataCopyWith<$Res> implements $LeaveDataCopyWith<$Res> {
  factory _$$_LeaveDataCopyWith(
          _$_LeaveData value, $Res Function(_$_LeaveData) then) =
      __$$_LeaveDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {int leaveBudget,
      int currentLeave,
      int requestedLeave,
      DateTime dateFrom,
      DateTime dateTo,
      String leaveCategory,
      String leaveDescription,
      bool isPending});
}

/// @nodoc
class __$$_LeaveDataCopyWithImpl<$Res> extends _$LeaveDataCopyWithImpl<$Res>
    implements _$$_LeaveDataCopyWith<$Res> {
  __$$_LeaveDataCopyWithImpl(
      _$_LeaveData _value, $Res Function(_$_LeaveData) _then)
      : super(_value, (v) => _then(v as _$_LeaveData));

  @override
  _$_LeaveData get _value => super._value as _$_LeaveData;

  @override
  $Res call({
    Object? leaveBudget = freezed,
    Object? currentLeave = freezed,
    Object? requestedLeave = freezed,
    Object? dateFrom = freezed,
    Object? dateTo = freezed,
    Object? leaveCategory = freezed,
    Object? leaveDescription = freezed,
    Object? isPending = freezed,
  }) {
    return _then(_$_LeaveData(
      leaveBudget: leaveBudget == freezed
          ? _value.leaveBudget
          : leaveBudget // ignore: cast_nullable_to_non_nullable
              as int,
      currentLeave: currentLeave == freezed
          ? _value.currentLeave
          : currentLeave // ignore: cast_nullable_to_non_nullable
              as int,
      requestedLeave: requestedLeave == freezed
          ? _value.requestedLeave
          : requestedLeave // ignore: cast_nullable_to_non_nullable
              as int,
      dateFrom: dateFrom == freezed
          ? _value.dateFrom
          : dateFrom // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateTo: dateTo == freezed
          ? _value.dateTo
          : dateTo // ignore: cast_nullable_to_non_nullable
              as DateTime,
      leaveCategory: leaveCategory == freezed
          ? _value.leaveCategory
          : leaveCategory // ignore: cast_nullable_to_non_nullable
              as String,
      leaveDescription: leaveDescription == freezed
          ? _value.leaveDescription
          : leaveDescription // ignore: cast_nullable_to_non_nullable
              as String,
      isPending: isPending == freezed
          ? _value.isPending
          : isPending // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LeaveData implements _LeaveData {
  _$_LeaveData(
      {required this.leaveBudget,
      required this.currentLeave,
      required this.requestedLeave,
      required this.dateFrom,
      required this.dateTo,
      required this.leaveCategory,
      required this.leaveDescription,
      required this.isPending});

  factory _$_LeaveData.fromJson(Map<String, dynamic> json) =>
      _$$_LeaveDataFromJson(json);

  @override
  final int leaveBudget;
  @override
  final int currentLeave;
  @override
  final int requestedLeave;
  @override
  final DateTime dateFrom;
  @override
  final DateTime dateTo;
  @override
  final String leaveCategory;
  @override
  final String leaveDescription;
  @override
  final bool isPending;

  @override
  String toString() {
    return 'LeaveData(leaveBudget: $leaveBudget, currentLeave: $currentLeave, requestedLeave: $requestedLeave, dateFrom: $dateFrom, dateTo: $dateTo, leaveCategory: $leaveCategory, leaveDescription: $leaveDescription, isPending: $isPending)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LeaveData &&
            const DeepCollectionEquality()
                .equals(other.leaveBudget, leaveBudget) &&
            const DeepCollectionEquality()
                .equals(other.currentLeave, currentLeave) &&
            const DeepCollectionEquality()
                .equals(other.requestedLeave, requestedLeave) &&
            const DeepCollectionEquality().equals(other.dateFrom, dateFrom) &&
            const DeepCollectionEquality().equals(other.dateTo, dateTo) &&
            const DeepCollectionEquality()
                .equals(other.leaveCategory, leaveCategory) &&
            const DeepCollectionEquality()
                .equals(other.leaveDescription, leaveDescription) &&
            const DeepCollectionEquality().equals(other.isPending, isPending));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(leaveBudget),
      const DeepCollectionEquality().hash(currentLeave),
      const DeepCollectionEquality().hash(requestedLeave),
      const DeepCollectionEquality().hash(dateFrom),
      const DeepCollectionEquality().hash(dateTo),
      const DeepCollectionEquality().hash(leaveCategory),
      const DeepCollectionEquality().hash(leaveDescription),
      const DeepCollectionEquality().hash(isPending));

  @JsonKey(ignore: true)
  @override
  _$$_LeaveDataCopyWith<_$_LeaveData> get copyWith =>
      __$$_LeaveDataCopyWithImpl<_$_LeaveData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LeaveDataToJson(this);
  }
}

abstract class _LeaveData implements LeaveData {
  factory _LeaveData(
      {required final int leaveBudget,
      required final int currentLeave,
      required final int requestedLeave,
      required final DateTime dateFrom,
      required final DateTime dateTo,
      required final String leaveCategory,
      required final String leaveDescription,
      required final bool isPending}) = _$_LeaveData;

  factory _LeaveData.fromJson(Map<String, dynamic> json) =
      _$_LeaveData.fromJson;

  @override
  int get leaveBudget => throw _privateConstructorUsedError;
  @override
  int get currentLeave => throw _privateConstructorUsedError;
  @override
  int get requestedLeave => throw _privateConstructorUsedError;
  @override
  DateTime get dateFrom => throw _privateConstructorUsedError;
  @override
  DateTime get dateTo => throw _privateConstructorUsedError;
  @override
  String get leaveCategory => throw _privateConstructorUsedError;
  @override
  String get leaveDescription => throw _privateConstructorUsedError;
  @override
  bool get isPending => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LeaveDataCopyWith<_$_LeaveData> get copyWith =>
      throw _privateConstructorUsedError;
}
