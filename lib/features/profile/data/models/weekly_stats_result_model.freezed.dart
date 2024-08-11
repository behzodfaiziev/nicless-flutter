// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weekly_stats_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeeklyStatsResultModel _$WeeklyStatsResultModelFromJson(
    Map<String, dynamic> json) {
  return _WeeklyStatsResultModel.fromJson(json);
}

/// @nodoc
mixin _$WeeklyStatsResultModel {
  List<WeeklyStatsModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeeklyStatsResultModelCopyWith<WeeklyStatsResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeeklyStatsResultModelCopyWith<$Res> {
  factory $WeeklyStatsResultModelCopyWith(WeeklyStatsResultModel value,
          $Res Function(WeeklyStatsResultModel) then) =
      _$WeeklyStatsResultModelCopyWithImpl<$Res, WeeklyStatsResultModel>;
  @useResult
  $Res call({List<WeeklyStatsModel>? data});
}

/// @nodoc
class _$WeeklyStatsResultModelCopyWithImpl<$Res,
        $Val extends WeeklyStatsResultModel>
    implements $WeeklyStatsResultModelCopyWith<$Res> {
  _$WeeklyStatsResultModelCopyWithImpl(this._value, this._then);

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
              as List<WeeklyStatsModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeeklyStatsResultModelImplCopyWith<$Res>
    implements $WeeklyStatsResultModelCopyWith<$Res> {
  factory _$$WeeklyStatsResultModelImplCopyWith(
          _$WeeklyStatsResultModelImpl value,
          $Res Function(_$WeeklyStatsResultModelImpl) then) =
      __$$WeeklyStatsResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<WeeklyStatsModel>? data});
}

/// @nodoc
class __$$WeeklyStatsResultModelImplCopyWithImpl<$Res>
    extends _$WeeklyStatsResultModelCopyWithImpl<$Res,
        _$WeeklyStatsResultModelImpl>
    implements _$$WeeklyStatsResultModelImplCopyWith<$Res> {
  __$$WeeklyStatsResultModelImplCopyWithImpl(
      _$WeeklyStatsResultModelImpl _value,
      $Res Function(_$WeeklyStatsResultModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$WeeklyStatsResultModelImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<WeeklyStatsModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeeklyStatsResultModelImpl extends _WeeklyStatsResultModel
    with DiagnosticableTreeMixin {
  const _$WeeklyStatsResultModelImpl({final List<WeeklyStatsModel>? data})
      : _data = data,
        super._();

  factory _$WeeklyStatsResultModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeeklyStatsResultModelImplFromJson(json);

  final List<WeeklyStatsModel>? _data;
  @override
  List<WeeklyStatsModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WeeklyStatsResultModel(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WeeklyStatsResultModel'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeeklyStatsResultModelImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeeklyStatsResultModelImplCopyWith<_$WeeklyStatsResultModelImpl>
      get copyWith => __$$WeeklyStatsResultModelImplCopyWithImpl<
          _$WeeklyStatsResultModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeeklyStatsResultModelImplToJson(
      this,
    );
  }
}

abstract class _WeeklyStatsResultModel extends WeeklyStatsResultModel {
  const factory _WeeklyStatsResultModel({final List<WeeklyStatsModel>? data}) =
      _$WeeklyStatsResultModelImpl;
  const _WeeklyStatsResultModel._() : super._();

  factory _WeeklyStatsResultModel.fromJson(Map<String, dynamic> json) =
      _$WeeklyStatsResultModelImpl.fromJson;

  @override
  List<WeeklyStatsModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$WeeklyStatsResultModelImplCopyWith<_$WeeklyStatsResultModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
