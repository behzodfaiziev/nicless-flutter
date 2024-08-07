// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'smoking_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SmokingListModel _$SmokingListModelFromJson(Map<String, dynamic> json) {
  return _SmokingModel.fromJson(json);
}

/// @nodoc
mixin _$SmokingListModel {
  List<SmokingDataModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SmokingListModelCopyWith<SmokingListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SmokingListModelCopyWith<$Res> {
  factory $SmokingListModelCopyWith(
          SmokingListModel value, $Res Function(SmokingListModel) then) =
      _$SmokingListModelCopyWithImpl<$Res, SmokingListModel>;
  @useResult
  $Res call({List<SmokingDataModel>? data});
}

/// @nodoc
class _$SmokingListModelCopyWithImpl<$Res, $Val extends SmokingListModel>
    implements $SmokingListModelCopyWith<$Res> {
  _$SmokingListModelCopyWithImpl(this._value, this._then);

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
              as List<SmokingDataModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SmokingModelImplCopyWith<$Res>
    implements $SmokingListModelCopyWith<$Res> {
  factory _$$SmokingModelImplCopyWith(
          _$SmokingModelImpl value, $Res Function(_$SmokingModelImpl) then) =
      __$$SmokingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SmokingDataModel>? data});
}

/// @nodoc
class __$$SmokingModelImplCopyWithImpl<$Res>
    extends _$SmokingListModelCopyWithImpl<$Res, _$SmokingModelImpl>
    implements _$$SmokingModelImplCopyWith<$Res> {
  __$$SmokingModelImplCopyWithImpl(
      _$SmokingModelImpl _value, $Res Function(_$SmokingModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SmokingModelImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SmokingDataModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SmokingModelImpl extends _SmokingModel {
  const _$SmokingModelImpl({final List<SmokingDataModel>? data})
      : _data = data,
        super._();

  factory _$SmokingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SmokingModelImplFromJson(json);

  final List<SmokingDataModel>? _data;
  @override
  List<SmokingDataModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SmokingListModel(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SmokingModelImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SmokingModelImplCopyWith<_$SmokingModelImpl> get copyWith =>
      __$$SmokingModelImplCopyWithImpl<_$SmokingModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SmokingModelImplToJson(
      this,
    );
  }
}

abstract class _SmokingModel extends SmokingListModel {
  const factory _SmokingModel({final List<SmokingDataModel>? data}) =
      _$SmokingModelImpl;
  const _SmokingModel._() : super._();

  factory _SmokingModel.fromJson(Map<String, dynamic> json) =
      _$SmokingModelImpl.fromJson;

  @override
  List<SmokingDataModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$SmokingModelImplCopyWith<_$SmokingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
