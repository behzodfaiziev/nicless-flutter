// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_smoking_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DailySmokingModel _$DailySmokingModelFromJson(Map<String, dynamic> json) {
  return _DailySmokingModel.fromJson(json);
}

/// @nodoc
mixin _$DailySmokingModel {
  String? get smokingId => throw _privateConstructorUsedError;
  int? get increasedCount => throw _privateConstructorUsedError;
  int? get seconds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DailySmokingModelCopyWith<DailySmokingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailySmokingModelCopyWith<$Res> {
  factory $DailySmokingModelCopyWith(
          DailySmokingModel value, $Res Function(DailySmokingModel) then) =
      _$DailySmokingModelCopyWithImpl<$Res, DailySmokingModel>;
  @useResult
  $Res call({String? smokingId, int? increasedCount, int? seconds});
}

/// @nodoc
class _$DailySmokingModelCopyWithImpl<$Res, $Val extends DailySmokingModel>
    implements $DailySmokingModelCopyWith<$Res> {
  _$DailySmokingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? smokingId = freezed,
    Object? increasedCount = freezed,
    Object? seconds = freezed,
  }) {
    return _then(_value.copyWith(
      smokingId: freezed == smokingId
          ? _value.smokingId
          : smokingId // ignore: cast_nullable_to_non_nullable
              as String?,
      increasedCount: freezed == increasedCount
          ? _value.increasedCount
          : increasedCount // ignore: cast_nullable_to_non_nullable
              as int?,
      seconds: freezed == seconds
          ? _value.seconds
          : seconds // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DailySmokingModelImplCopyWith<$Res>
    implements $DailySmokingModelCopyWith<$Res> {
  factory _$$DailySmokingModelImplCopyWith(_$DailySmokingModelImpl value,
          $Res Function(_$DailySmokingModelImpl) then) =
      __$$DailySmokingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? smokingId, int? increasedCount, int? seconds});
}

/// @nodoc
class __$$DailySmokingModelImplCopyWithImpl<$Res>
    extends _$DailySmokingModelCopyWithImpl<$Res, _$DailySmokingModelImpl>
    implements _$$DailySmokingModelImplCopyWith<$Res> {
  __$$DailySmokingModelImplCopyWithImpl(_$DailySmokingModelImpl _value,
      $Res Function(_$DailySmokingModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? smokingId = freezed,
    Object? increasedCount = freezed,
    Object? seconds = freezed,
  }) {
    return _then(_$DailySmokingModelImpl(
      smokingId: freezed == smokingId
          ? _value.smokingId
          : smokingId // ignore: cast_nullable_to_non_nullable
              as String?,
      increasedCount: freezed == increasedCount
          ? _value.increasedCount
          : increasedCount // ignore: cast_nullable_to_non_nullable
              as int?,
      seconds: freezed == seconds
          ? _value.seconds
          : seconds // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DailySmokingModelImpl extends _DailySmokingModel {
  const _$DailySmokingModelImpl(
      {this.smokingId, this.increasedCount, this.seconds})
      : super._();

  factory _$DailySmokingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailySmokingModelImplFromJson(json);

  @override
  final String? smokingId;
  @override
  final int? increasedCount;
  @override
  final int? seconds;

  @override
  String toString() {
    return 'DailySmokingModel(smokingId: $smokingId, increasedCount: $increasedCount, seconds: $seconds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailySmokingModelImpl &&
            (identical(other.smokingId, smokingId) ||
                other.smokingId == smokingId) &&
            (identical(other.increasedCount, increasedCount) ||
                other.increasedCount == increasedCount) &&
            (identical(other.seconds, seconds) || other.seconds == seconds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, smokingId, increasedCount, seconds);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DailySmokingModelImplCopyWith<_$DailySmokingModelImpl> get copyWith =>
      __$$DailySmokingModelImplCopyWithImpl<_$DailySmokingModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailySmokingModelImplToJson(
      this,
    );
  }
}

abstract class _DailySmokingModel extends DailySmokingModel {
  const factory _DailySmokingModel(
      {final String? smokingId,
      final int? increasedCount,
      final int? seconds}) = _$DailySmokingModelImpl;
  const _DailySmokingModel._() : super._();

  factory _DailySmokingModel.fromJson(Map<String, dynamic> json) =
      _$DailySmokingModelImpl.fromJson;

  @override
  String? get smokingId;
  @override
  int? get increasedCount;
  @override
  int? get seconds;
  @override
  @JsonKey(ignore: true)
  _$$DailySmokingModelImplCopyWith<_$DailySmokingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
