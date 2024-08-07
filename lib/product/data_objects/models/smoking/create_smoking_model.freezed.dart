// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_smoking_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateSmokingModel _$CreateSmokingModelFromJson(Map<String, dynamic> json) {
  return _CreateSmokingModel.fromJson(json);
}

/// @nodoc
mixin _$CreateSmokingModel {
  String? get smokingType => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  double? get priceInUSDollars => throw _privateConstructorUsedError;
  SmokingDetailsModel? get smoking => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateSmokingModelCopyWith<CreateSmokingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateSmokingModelCopyWith<$Res> {
  factory $CreateSmokingModelCopyWith(
          CreateSmokingModel value, $Res Function(CreateSmokingModel) then) =
      _$CreateSmokingModelCopyWithImpl<$Res, CreateSmokingModel>;
  @useResult
  $Res call(
      {String? smokingType,
      String? name,
      double? priceInUSDollars,
      SmokingDetailsModel? smoking});

  $SmokingDetailsModelCopyWith<$Res>? get smoking;
}

/// @nodoc
class _$CreateSmokingModelCopyWithImpl<$Res, $Val extends CreateSmokingModel>
    implements $CreateSmokingModelCopyWith<$Res> {
  _$CreateSmokingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? smokingType = freezed,
    Object? name = freezed,
    Object? priceInUSDollars = freezed,
    Object? smoking = freezed,
  }) {
    return _then(_value.copyWith(
      smokingType: freezed == smokingType
          ? _value.smokingType
          : smokingType // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      priceInUSDollars: freezed == priceInUSDollars
          ? _value.priceInUSDollars
          : priceInUSDollars // ignore: cast_nullable_to_non_nullable
              as double?,
      smoking: freezed == smoking
          ? _value.smoking
          : smoking // ignore: cast_nullable_to_non_nullable
              as SmokingDetailsModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SmokingDetailsModelCopyWith<$Res>? get smoking {
    if (_value.smoking == null) {
      return null;
    }

    return $SmokingDetailsModelCopyWith<$Res>(_value.smoking!, (value) {
      return _then(_value.copyWith(smoking: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateSmokingModelImplCopyWith<$Res>
    implements $CreateSmokingModelCopyWith<$Res> {
  factory _$$CreateSmokingModelImplCopyWith(_$CreateSmokingModelImpl value,
          $Res Function(_$CreateSmokingModelImpl) then) =
      __$$CreateSmokingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? smokingType,
      String? name,
      double? priceInUSDollars,
      SmokingDetailsModel? smoking});

  @override
  $SmokingDetailsModelCopyWith<$Res>? get smoking;
}

/// @nodoc
class __$$CreateSmokingModelImplCopyWithImpl<$Res>
    extends _$CreateSmokingModelCopyWithImpl<$Res, _$CreateSmokingModelImpl>
    implements _$$CreateSmokingModelImplCopyWith<$Res> {
  __$$CreateSmokingModelImplCopyWithImpl(_$CreateSmokingModelImpl _value,
      $Res Function(_$CreateSmokingModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? smokingType = freezed,
    Object? name = freezed,
    Object? priceInUSDollars = freezed,
    Object? smoking = freezed,
  }) {
    return _then(_$CreateSmokingModelImpl(
      smokingType: freezed == smokingType
          ? _value.smokingType
          : smokingType // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      priceInUSDollars: freezed == priceInUSDollars
          ? _value.priceInUSDollars
          : priceInUSDollars // ignore: cast_nullable_to_non_nullable
              as double?,
      smoking: freezed == smoking
          ? _value.smoking
          : smoking // ignore: cast_nullable_to_non_nullable
              as SmokingDetailsModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateSmokingModelImpl extends _CreateSmokingModel
    with DiagnosticableTreeMixin {
  const _$CreateSmokingModelImpl(
      {this.smokingType, this.name, this.priceInUSDollars, this.smoking})
      : super._();

  factory _$CreateSmokingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateSmokingModelImplFromJson(json);

  @override
  final String? smokingType;
  @override
  final String? name;
  @override
  final double? priceInUSDollars;
  @override
  final SmokingDetailsModel? smoking;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateSmokingModel(smokingType: $smokingType, name: $name, priceInUSDollars: $priceInUSDollars, smoking: $smoking)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreateSmokingModel'))
      ..add(DiagnosticsProperty('smokingType', smokingType))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('priceInUSDollars', priceInUSDollars))
      ..add(DiagnosticsProperty('smoking', smoking));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateSmokingModelImpl &&
            (identical(other.smokingType, smokingType) ||
                other.smokingType == smokingType) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.priceInUSDollars, priceInUSDollars) ||
                other.priceInUSDollars == priceInUSDollars) &&
            (identical(other.smoking, smoking) || other.smoking == smoking));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, smokingType, name, priceInUSDollars, smoking);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateSmokingModelImplCopyWith<_$CreateSmokingModelImpl> get copyWith =>
      __$$CreateSmokingModelImplCopyWithImpl<_$CreateSmokingModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateSmokingModelImplToJson(
      this,
    );
  }
}

abstract class _CreateSmokingModel extends CreateSmokingModel {
  const factory _CreateSmokingModel(
      {final String? smokingType,
      final String? name,
      final double? priceInUSDollars,
      final SmokingDetailsModel? smoking}) = _$CreateSmokingModelImpl;
  const _CreateSmokingModel._() : super._();

  factory _CreateSmokingModel.fromJson(Map<String, dynamic> json) =
      _$CreateSmokingModelImpl.fromJson;

  @override
  String? get smokingType;
  @override
  String? get name;
  @override
  double? get priceInUSDollars;
  @override
  SmokingDetailsModel? get smoking;
  @override
  @JsonKey(ignore: true)
  _$$CreateSmokingModelImplCopyWith<_$CreateSmokingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
