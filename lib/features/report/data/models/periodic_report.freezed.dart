// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'periodic_report.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PeriodicReport _$PeriodicReportFromJson(Map<String, dynamic> json) {
  return _PeriodicReport.fromJson(json);
}

/// @nodoc
mixin _$PeriodicReport {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PeriodicReportCopyWith<PeriodicReport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeriodicReportCopyWith<$Res> {
  factory $PeriodicReportCopyWith(
          PeriodicReport value, $Res Function(PeriodicReport) then) =
      _$PeriodicReportCopyWithImpl<$Res, PeriodicReport>;
  @useResult
  $Res call({String? title, String? description});
}

/// @nodoc
class _$PeriodicReportCopyWithImpl<$Res, $Val extends PeriodicReport>
    implements $PeriodicReportCopyWith<$Res> {
  _$PeriodicReportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PeriodicReportImplCopyWith<$Res>
    implements $PeriodicReportCopyWith<$Res> {
  factory _$$PeriodicReportImplCopyWith(_$PeriodicReportImpl value,
          $Res Function(_$PeriodicReportImpl) then) =
      __$$PeriodicReportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, String? description});
}

/// @nodoc
class __$$PeriodicReportImplCopyWithImpl<$Res>
    extends _$PeriodicReportCopyWithImpl<$Res, _$PeriodicReportImpl>
    implements _$$PeriodicReportImplCopyWith<$Res> {
  __$$PeriodicReportImplCopyWithImpl(
      _$PeriodicReportImpl _value, $Res Function(_$PeriodicReportImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_$PeriodicReportImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PeriodicReportImpl extends _PeriodicReport
    with DiagnosticableTreeMixin {
  const _$PeriodicReportImpl({this.title, this.description}) : super._();

  factory _$PeriodicReportImpl.fromJson(Map<String, dynamic> json) =>
      _$$PeriodicReportImplFromJson(json);

  @override
  final String? title;
  @override
  final String? description;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PeriodicReport(title: $title, description: $description)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PeriodicReport'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PeriodicReportImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PeriodicReportImplCopyWith<_$PeriodicReportImpl> get copyWith =>
      __$$PeriodicReportImplCopyWithImpl<_$PeriodicReportImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PeriodicReportImplToJson(
      this,
    );
  }
}

abstract class _PeriodicReport extends PeriodicReport {
  const factory _PeriodicReport(
      {final String? title, final String? description}) = _$PeriodicReportImpl;
  const _PeriodicReport._() : super._();

  factory _PeriodicReport.fromJson(Map<String, dynamic> json) =
      _$PeriodicReportImpl.fromJson;

  @override
  String? get title;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$PeriodicReportImplCopyWith<_$PeriodicReportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
