// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherModel _$WeatherModelFromJson(Map<String, dynamic> json) {
  return _WeatherData.fromJson(json);
}

/// @nodoc
mixin _$WeatherModel {
  String get resolvedAddress => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get timezone => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  double get tzoffset => throw _privateConstructorUsedError;
  List<WeatherDayModel> get days => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherModelCopyWith<WeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherModelCopyWith<$Res> {
  factory $WeatherModelCopyWith(
          WeatherModel value, $Res Function(WeatherModel) then) =
      _$WeatherModelCopyWithImpl<$Res, WeatherModel>;
  @useResult
  $Res call(
      {String resolvedAddress,
      String description,
      String timezone,
      double latitude,
      double longitude,
      double tzoffset,
      List<WeatherDayModel> days});
}

/// @nodoc
class _$WeatherModelCopyWithImpl<$Res, $Val extends WeatherModel>
    implements $WeatherModelCopyWith<$Res> {
  _$WeatherModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resolvedAddress = null,
    Object? description = null,
    Object? timezone = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? tzoffset = null,
    Object? days = null,
  }) {
    return _then(_value.copyWith(
      resolvedAddress: null == resolvedAddress
          ? _value.resolvedAddress
          : resolvedAddress // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      tzoffset: null == tzoffset
          ? _value.tzoffset
          : tzoffset // ignore: cast_nullable_to_non_nullable
              as double,
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as List<WeatherDayModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherDataImplCopyWith<$Res>
    implements $WeatherModelCopyWith<$Res> {
  factory _$$WeatherDataImplCopyWith(
          _$WeatherDataImpl value, $Res Function(_$WeatherDataImpl) then) =
      __$$WeatherDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String resolvedAddress,
      String description,
      String timezone,
      double latitude,
      double longitude,
      double tzoffset,
      List<WeatherDayModel> days});
}

/// @nodoc
class __$$WeatherDataImplCopyWithImpl<$Res>
    extends _$WeatherModelCopyWithImpl<$Res, _$WeatherDataImpl>
    implements _$$WeatherDataImplCopyWith<$Res> {
  __$$WeatherDataImplCopyWithImpl(
      _$WeatherDataImpl _value, $Res Function(_$WeatherDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resolvedAddress = null,
    Object? description = null,
    Object? timezone = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? tzoffset = null,
    Object? days = null,
  }) {
    return _then(_$WeatherDataImpl(
      resolvedAddress: null == resolvedAddress
          ? _value.resolvedAddress
          : resolvedAddress // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      tzoffset: null == tzoffset
          ? _value.tzoffset
          : tzoffset // ignore: cast_nullable_to_non_nullable
              as double,
      days: null == days
          ? _value._days
          : days // ignore: cast_nullable_to_non_nullable
              as List<WeatherDayModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherDataImpl implements _WeatherData {
  _$WeatherDataImpl(
      {required this.resolvedAddress,
      required this.description,
      required this.timezone,
      required this.latitude,
      required this.longitude,
      required this.tzoffset,
      required final List<WeatherDayModel> days})
      : _days = days;

  factory _$WeatherDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherDataImplFromJson(json);

  @override
  final String resolvedAddress;
  @override
  final String description;
  @override
  final String timezone;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final double tzoffset;
  final List<WeatherDayModel> _days;
  @override
  List<WeatherDayModel> get days {
    if (_days is EqualUnmodifiableListView) return _days;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_days);
  }

  @override
  String toString() {
    return 'WeatherModel(resolvedAddress: $resolvedAddress, description: $description, timezone: $timezone, latitude: $latitude, longitude: $longitude, tzoffset: $tzoffset, days: $days)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherDataImpl &&
            (identical(other.resolvedAddress, resolvedAddress) ||
                other.resolvedAddress == resolvedAddress) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.tzoffset, tzoffset) ||
                other.tzoffset == tzoffset) &&
            const DeepCollectionEquality().equals(other._days, _days));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      resolvedAddress,
      description,
      timezone,
      latitude,
      longitude,
      tzoffset,
      const DeepCollectionEquality().hash(_days));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherDataImplCopyWith<_$WeatherDataImpl> get copyWith =>
      __$$WeatherDataImplCopyWithImpl<_$WeatherDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherDataImplToJson(
      this,
    );
  }
}

abstract class _WeatherData implements WeatherModel {
  factory _WeatherData(
      {required final String resolvedAddress,
      required final String description,
      required final String timezone,
      required final double latitude,
      required final double longitude,
      required final double tzoffset,
      required final List<WeatherDayModel> days}) = _$WeatherDataImpl;

  factory _WeatherData.fromJson(Map<String, dynamic> json) =
      _$WeatherDataImpl.fromJson;

  @override
  String get resolvedAddress;
  @override
  String get description;
  @override
  String get timezone;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  double get tzoffset;
  @override
  List<WeatherDayModel> get days;
  @override
  @JsonKey(ignore: true)
  _$$WeatherDataImplCopyWith<_$WeatherDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
