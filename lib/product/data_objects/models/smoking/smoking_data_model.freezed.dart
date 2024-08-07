// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'smoking_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SmokingDataModel _$SmokingDataModelFromJson(Map<String, dynamic> json) {
  return _SmokingDataModel.fromJson(json);
}

/// @nodoc
mixin _$SmokingDataModel {
  String? get id => throw _privateConstructorUsedError;
  SmokingDetailsModel? get smokingDetails => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get priceInUSDollars => throw _privateConstructorUsedError;
  List<String>? get dailyRecords => throw _privateConstructorUsedError;
  String? get smokingType => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SmokingDataModelCopyWith<SmokingDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SmokingDataModelCopyWith<$Res> {
  factory $SmokingDataModelCopyWith(
          SmokingDataModel value, $Res Function(SmokingDataModel) then) =
      _$SmokingDataModelCopyWithImpl<$Res, SmokingDataModel>;
  @useResult
  $Res call(
      {String? id,
      SmokingDetailsModel? smokingDetails,
      String? name,
      int? priceInUSDollars,
      List<String>? dailyRecords,
      String? smokingType,
      String? createdAt,
      String? updatedAt});

  $SmokingDetailsModelCopyWith<$Res>? get smokingDetails;
}

/// @nodoc
class _$SmokingDataModelCopyWithImpl<$Res, $Val extends SmokingDataModel>
    implements $SmokingDataModelCopyWith<$Res> {
  _$SmokingDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? smokingDetails = freezed,
    Object? name = freezed,
    Object? priceInUSDollars = freezed,
    Object? dailyRecords = freezed,
    Object? smokingType = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      smokingDetails: freezed == smokingDetails
          ? _value.smokingDetails
          : smokingDetails // ignore: cast_nullable_to_non_nullable
              as SmokingDetailsModel?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      priceInUSDollars: freezed == priceInUSDollars
          ? _value.priceInUSDollars
          : priceInUSDollars // ignore: cast_nullable_to_non_nullable
              as int?,
      dailyRecords: freezed == dailyRecords
          ? _value.dailyRecords
          : dailyRecords // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      smokingType: freezed == smokingType
          ? _value.smokingType
          : smokingType // ignore: cast_nullable_to_non_nullable
              as String?,
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
  $SmokingDetailsModelCopyWith<$Res>? get smokingDetails {
    if (_value.smokingDetails == null) {
      return null;
    }

    return $SmokingDetailsModelCopyWith<$Res>(_value.smokingDetails!, (value) {
      return _then(_value.copyWith(smokingDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SmokingDataModelImplCopyWith<$Res>
    implements $SmokingDataModelCopyWith<$Res> {
  factory _$$SmokingDataModelImplCopyWith(_$SmokingDataModelImpl value,
          $Res Function(_$SmokingDataModelImpl) then) =
      __$$SmokingDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      SmokingDetailsModel? smokingDetails,
      String? name,
      int? priceInUSDollars,
      List<String>? dailyRecords,
      String? smokingType,
      String? createdAt,
      String? updatedAt});

  @override
  $SmokingDetailsModelCopyWith<$Res>? get smokingDetails;
}

/// @nodoc
class __$$SmokingDataModelImplCopyWithImpl<$Res>
    extends _$SmokingDataModelCopyWithImpl<$Res, _$SmokingDataModelImpl>
    implements _$$SmokingDataModelImplCopyWith<$Res> {
  __$$SmokingDataModelImplCopyWithImpl(_$SmokingDataModelImpl _value,
      $Res Function(_$SmokingDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? smokingDetails = freezed,
    Object? name = freezed,
    Object? priceInUSDollars = freezed,
    Object? dailyRecords = freezed,
    Object? smokingType = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$SmokingDataModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      smokingDetails: freezed == smokingDetails
          ? _value.smokingDetails
          : smokingDetails // ignore: cast_nullable_to_non_nullable
              as SmokingDetailsModel?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      priceInUSDollars: freezed == priceInUSDollars
          ? _value.priceInUSDollars
          : priceInUSDollars // ignore: cast_nullable_to_non_nullable
              as int?,
      dailyRecords: freezed == dailyRecords
          ? _value._dailyRecords
          : dailyRecords // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      smokingType: freezed == smokingType
          ? _value.smokingType
          : smokingType // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$SmokingDataModelImpl extends _SmokingDataModel
    with DiagnosticableTreeMixin {
  const _$SmokingDataModelImpl(
      {this.id,
      this.smokingDetails,
      this.name,
      this.priceInUSDollars,
      final List<String>? dailyRecords,
      this.smokingType,
      this.createdAt,
      this.updatedAt})
      : _dailyRecords = dailyRecords,
        super._();

  factory _$SmokingDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SmokingDataModelImplFromJson(json);

  @override
  final String? id;
  @override
  final SmokingDetailsModel? smokingDetails;
  @override
  final String? name;
  @override
  final int? priceInUSDollars;
  final List<String>? _dailyRecords;
  @override
  List<String>? get dailyRecords {
    final value = _dailyRecords;
    if (value == null) return null;
    if (_dailyRecords is EqualUnmodifiableListView) return _dailyRecords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? smokingType;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SmokingDataModel(id: $id, smokingDetails: $smokingDetails, name: $name, priceInUSDollars: $priceInUSDollars, dailyRecords: $dailyRecords, smokingType: $smokingType, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SmokingDataModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('smokingDetails', smokingDetails))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('priceInUSDollars', priceInUSDollars))
      ..add(DiagnosticsProperty('dailyRecords', dailyRecords))
      ..add(DiagnosticsProperty('smokingType', smokingType))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SmokingDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.smokingDetails, smokingDetails) ||
                other.smokingDetails == smokingDetails) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.priceInUSDollars, priceInUSDollars) ||
                other.priceInUSDollars == priceInUSDollars) &&
            const DeepCollectionEquality()
                .equals(other._dailyRecords, _dailyRecords) &&
            (identical(other.smokingType, smokingType) ||
                other.smokingType == smokingType) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      smokingDetails,
      name,
      priceInUSDollars,
      const DeepCollectionEquality().hash(_dailyRecords),
      smokingType,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SmokingDataModelImplCopyWith<_$SmokingDataModelImpl> get copyWith =>
      __$$SmokingDataModelImplCopyWithImpl<_$SmokingDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SmokingDataModelImplToJson(
      this,
    );
  }
}

abstract class _SmokingDataModel extends SmokingDataModel {
  const factory _SmokingDataModel(
      {final String? id,
      final SmokingDetailsModel? smokingDetails,
      final String? name,
      final int? priceInUSDollars,
      final List<String>? dailyRecords,
      final String? smokingType,
      final String? createdAt,
      final String? updatedAt}) = _$SmokingDataModelImpl;
  const _SmokingDataModel._() : super._();

  factory _SmokingDataModel.fromJson(Map<String, dynamic> json) =
      _$SmokingDataModelImpl.fromJson;

  @override
  String? get id;
  @override
  SmokingDetailsModel? get smokingDetails;
  @override
  String? get name;
  @override
  int? get priceInUSDollars;
  @override
  List<String>? get dailyRecords;
  @override
  String? get smokingType;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$SmokingDataModelImplCopyWith<_$SmokingDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
