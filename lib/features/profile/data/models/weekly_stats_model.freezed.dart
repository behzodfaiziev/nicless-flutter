// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weekly_stats_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeeklyStatsModel _$WeeklyStatsModelFromJson(Map<String, dynamic> json) {
  return _WeeklyStatsModel.fromJson(json);
}

/// @nodoc
mixin _$WeeklyStatsModel {
  String? get id => throw _privateConstructorUsedError;
  String? get recordType => throw _privateConstructorUsedError;
  int? get dailyCount => throw _privateConstructorUsedError;
  int? get dailySpentTime => throw _privateConstructorUsedError;
  SmokingDataModel? get smoking => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeeklyStatsModelCopyWith<WeeklyStatsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeeklyStatsModelCopyWith<$Res> {
  factory $WeeklyStatsModelCopyWith(
          WeeklyStatsModel value, $Res Function(WeeklyStatsModel) then) =
      _$WeeklyStatsModelCopyWithImpl<$Res, WeeklyStatsModel>;
  @useResult
  $Res call(
      {String? id,
      String? recordType,
      int? dailyCount,
      int? dailySpentTime,
      SmokingDataModel? smoking,
      String? createdAt,
      String? updatedAt});

  $SmokingDataModelCopyWith<$Res>? get smoking;
}

/// @nodoc
class _$WeeklyStatsModelCopyWithImpl<$Res, $Val extends WeeklyStatsModel>
    implements $WeeklyStatsModelCopyWith<$Res> {
  _$WeeklyStatsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? recordType = freezed,
    Object? dailyCount = freezed,
    Object? dailySpentTime = freezed,
    Object? smoking = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      recordType: freezed == recordType
          ? _value.recordType
          : recordType // ignore: cast_nullable_to_non_nullable
              as String?,
      dailyCount: freezed == dailyCount
          ? _value.dailyCount
          : dailyCount // ignore: cast_nullable_to_non_nullable
              as int?,
      dailySpentTime: freezed == dailySpentTime
          ? _value.dailySpentTime
          : dailySpentTime // ignore: cast_nullable_to_non_nullable
              as int?,
      smoking: freezed == smoking
          ? _value.smoking
          : smoking // ignore: cast_nullable_to_non_nullable
              as SmokingDataModel?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SmokingDataModelCopyWith<$Res>? get smoking {
    if (_value.smoking == null) {
      return null;
    }

    return $SmokingDataModelCopyWith<$Res>(_value.smoking!, (value) {
      return _then(_value.copyWith(smoking: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeeklyStatsModelImplCopyWith<$Res>
    implements $WeeklyStatsModelCopyWith<$Res> {
  factory _$$WeeklyStatsModelImplCopyWith(_$WeeklyStatsModelImpl value,
          $Res Function(_$WeeklyStatsModelImpl) then) =
      __$$WeeklyStatsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? recordType,
      int? dailyCount,
      int? dailySpentTime,
      SmokingDataModel? smoking,
      String? createdAt,
      String? updatedAt});

  @override
  $SmokingDataModelCopyWith<$Res>? get smoking;
}

/// @nodoc
class __$$WeeklyStatsModelImplCopyWithImpl<$Res>
    extends _$WeeklyStatsModelCopyWithImpl<$Res, _$WeeklyStatsModelImpl>
    implements _$$WeeklyStatsModelImplCopyWith<$Res> {
  __$$WeeklyStatsModelImplCopyWithImpl(_$WeeklyStatsModelImpl _value,
      $Res Function(_$WeeklyStatsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? recordType = freezed,
    Object? dailyCount = freezed,
    Object? dailySpentTime = freezed,
    Object? smoking = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$WeeklyStatsModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      recordType: freezed == recordType
          ? _value.recordType
          : recordType // ignore: cast_nullable_to_non_nullable
              as String?,
      dailyCount: freezed == dailyCount
          ? _value.dailyCount
          : dailyCount // ignore: cast_nullable_to_non_nullable
              as int?,
      dailySpentTime: freezed == dailySpentTime
          ? _value.dailySpentTime
          : dailySpentTime // ignore: cast_nullable_to_non_nullable
              as int?,
      smoking: freezed == smoking
          ? _value.smoking
          : smoking // ignore: cast_nullable_to_non_nullable
              as SmokingDataModel?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeeklyStatsModelImpl extends _WeeklyStatsModel {
  const _$WeeklyStatsModelImpl(
      {this.id,
      this.recordType,
      this.dailyCount,
      this.dailySpentTime,
      this.smoking,
      this.createdAt,
      this.updatedAt})
      : super._();

  factory _$WeeklyStatsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeeklyStatsModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? recordType;
  @override
  final int? dailyCount;
  @override
  final int? dailySpentTime;
  @override
  final SmokingDataModel? smoking;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'WeeklyStatsModel(id: $id, recordType: $recordType, dailyCount: $dailyCount, dailySpentTime: $dailySpentTime, smoking: $smoking, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeeklyStatsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.recordType, recordType) ||
                other.recordType == recordType) &&
            (identical(other.dailyCount, dailyCount) ||
                other.dailyCount == dailyCount) &&
            (identical(other.dailySpentTime, dailySpentTime) ||
                other.dailySpentTime == dailySpentTime) &&
            (identical(other.smoking, smoking) || other.smoking == smoking) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, recordType, dailyCount,
      dailySpentTime, smoking, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeeklyStatsModelImplCopyWith<_$WeeklyStatsModelImpl> get copyWith =>
      __$$WeeklyStatsModelImplCopyWithImpl<_$WeeklyStatsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeeklyStatsModelImplToJson(
      this,
    );
  }
}

abstract class _WeeklyStatsModel extends WeeklyStatsModel {
  const factory _WeeklyStatsModel(
      {final String? id,
      final String? recordType,
      final int? dailyCount,
      final int? dailySpentTime,
      final SmokingDataModel? smoking,
      final String? createdAt,
      final String? updatedAt}) = _$WeeklyStatsModelImpl;
  const _WeeklyStatsModel._() : super._();

  factory _WeeklyStatsModel.fromJson(Map<String, dynamic> json) =
      _$WeeklyStatsModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get recordType;
  @override
  int? get dailyCount;
  @override
  int? get dailySpentTime;
  @override
  SmokingDataModel? get smoking;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$WeeklyStatsModelImplCopyWith<_$WeeklyStatsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
