// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'periodic_report_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PeriodicReportModel _$PeriodicReportModelFromJson(Map<String, dynamic> json) {
  return _PeriodicReportModel.fromJson(json);
}

/// @nodoc
mixin _$PeriodicReportModel {
  List<PeriodicReport>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PeriodicReportModelCopyWith<PeriodicReportModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeriodicReportModelCopyWith<$Res> {
  factory $PeriodicReportModelCopyWith(
          PeriodicReportModel value, $Res Function(PeriodicReportModel) then) =
      _$PeriodicReportModelCopyWithImpl<$Res, PeriodicReportModel>;
  @useResult
  $Res call({List<PeriodicReport>? data});
}

/// @nodoc
class _$PeriodicReportModelCopyWithImpl<$Res, $Val extends PeriodicReportModel>
    implements $PeriodicReportModelCopyWith<$Res> {
  _$PeriodicReportModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PeriodicReport>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PeriodicReportModelImplCopyWith<$Res>
    implements $PeriodicReportModelCopyWith<$Res> {
  factory _$$PeriodicReportModelImplCopyWith(_$PeriodicReportModelImpl value,
          $Res Function(_$PeriodicReportModelImpl) then) =
      __$$PeriodicReportModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PeriodicReport>? data});
}

/// @nodoc
class __$$PeriodicReportModelImplCopyWithImpl<$Res>
    extends _$PeriodicReportModelCopyWithImpl<$Res, _$PeriodicReportModelImpl>
    implements _$$PeriodicReportModelImplCopyWith<$Res> {
  __$$PeriodicReportModelImplCopyWithImpl(_$PeriodicReportModelImpl _value,
      $Res Function(_$PeriodicReportModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$PeriodicReportModelImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PeriodicReport>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PeriodicReportModelImpl extends _PeriodicReportModel {
  const _$PeriodicReportModelImpl({final List<PeriodicReport>? data})
      : _data = data,
        super._();

  factory _$PeriodicReportModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PeriodicReportModelImplFromJson(json);

  final List<PeriodicReport>? _data;
  @override
  List<PeriodicReport>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PeriodicReportModel(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PeriodicReportModelImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PeriodicReportModelImplCopyWith<_$PeriodicReportModelImpl> get copyWith =>
      __$$PeriodicReportModelImplCopyWithImpl<_$PeriodicReportModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PeriodicReportModelImplToJson(
      this,
    );
  }
}

abstract class _PeriodicReportModel extends PeriodicReportModel {
  const factory _PeriodicReportModel({final List<PeriodicReport>? data}) =
      _$PeriodicReportModelImpl;
  const _PeriodicReportModel._() : super._();

  factory _PeriodicReportModel.fromJson(Map<String, dynamic> json) =
      _$PeriodicReportModelImpl.fromJson;

  @override
  List<PeriodicReport>? get data;
  @override
  @JsonKey(ignore: true)
  _$$PeriodicReportModelImplCopyWith<_$PeriodicReportModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
