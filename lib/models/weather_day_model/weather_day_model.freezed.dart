// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_day_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherDayModel _$WeatherDayModelFromJson(Map<String, dynamic> json) {
  return _WeatherDayModel.fromJson(json);
}

/// @nodoc
mixin _$WeatherDayModel {
  String get datetime => throw _privateConstructorUsedError;
  num get tempmax => throw _privateConstructorUsedError;
  num get tempmin => throw _privateConstructorUsedError;
  num get temp => throw _privateConstructorUsedError;
  String get conditions => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherDayModelCopyWith<WeatherDayModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherDayModelCopyWith<$Res> {
  factory $WeatherDayModelCopyWith(
          WeatherDayModel value, $Res Function(WeatherDayModel) then) =
      _$WeatherDayModelCopyWithImpl<$Res, WeatherDayModel>;
  @useResult
  $Res call(
      {String datetime,
      num tempmax,
      num tempmin,
      num temp,
      String conditions,
      String icon});
}

/// @nodoc
class _$WeatherDayModelCopyWithImpl<$Res, $Val extends WeatherDayModel>
    implements $WeatherDayModelCopyWith<$Res> {
  _$WeatherDayModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datetime = null,
    Object? tempmax = null,
    Object? tempmin = null,
    Object? temp = null,
    Object? conditions = null,
    Object? icon = null,
  }) {
    return _then(_value.copyWith(
      datetime: null == datetime
          ? _value.datetime
          : datetime // ignore: cast_nullable_to_non_nullable
              as String,
      tempmax: null == tempmax
          ? _value.tempmax
          : tempmax // ignore: cast_nullable_to_non_nullable
              as num,
      tempmin: null == tempmin
          ? _value.tempmin
          : tempmin // ignore: cast_nullable_to_non_nullable
              as num,
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as num,
      conditions: null == conditions
          ? _value.conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherDayModelImplCopyWith<$Res>
    implements $WeatherDayModelCopyWith<$Res> {
  factory _$$WeatherDayModelImplCopyWith(_$WeatherDayModelImpl value,
          $Res Function(_$WeatherDayModelImpl) then) =
      __$$WeatherDayModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String datetime,
      num tempmax,
      num tempmin,
      num temp,
      String conditions,
      String icon});
}

/// @nodoc
class __$$WeatherDayModelImplCopyWithImpl<$Res>
    extends _$WeatherDayModelCopyWithImpl<$Res, _$WeatherDayModelImpl>
    implements _$$WeatherDayModelImplCopyWith<$Res> {
  __$$WeatherDayModelImplCopyWithImpl(
      _$WeatherDayModelImpl _value, $Res Function(_$WeatherDayModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datetime = null,
    Object? tempmax = null,
    Object? tempmin = null,
    Object? temp = null,
    Object? conditions = null,
    Object? icon = null,
  }) {
    return _then(_$WeatherDayModelImpl(
      datetime: null == datetime
          ? _value.datetime
          : datetime // ignore: cast_nullable_to_non_nullable
              as String,
      tempmax: null == tempmax
          ? _value.tempmax
          : tempmax // ignore: cast_nullable_to_non_nullable
              as num,
      tempmin: null == tempmin
          ? _value.tempmin
          : tempmin // ignore: cast_nullable_to_non_nullable
              as num,
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as num,
      conditions: null == conditions
          ? _value.conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherDayModelImpl implements _WeatherDayModel {
  _$WeatherDayModelImpl(
      {required this.datetime,
      required this.tempmax,
      required this.tempmin,
      required this.temp,
      required this.conditions,
      required this.icon});

  factory _$WeatherDayModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherDayModelImplFromJson(json);

  @override
  final String datetime;
  @override
  final num tempmax;
  @override
  final num tempmin;
  @override
  final num temp;
  @override
  final String conditions;
  @override
  final String icon;

  @override
  String toString() {
    return 'WeatherDayModel(datetime: $datetime, tempmax: $tempmax, tempmin: $tempmin, temp: $temp, conditions: $conditions, icon: $icon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherDayModelImpl &&
            (identical(other.datetime, datetime) ||
                other.datetime == datetime) &&
            (identical(other.tempmax, tempmax) || other.tempmax == tempmax) &&
            (identical(other.tempmin, tempmin) || other.tempmin == tempmin) &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.conditions, conditions) ||
                other.conditions == conditions) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, datetime, tempmax, tempmin, temp, conditions, icon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherDayModelImplCopyWith<_$WeatherDayModelImpl> get copyWith =>
      __$$WeatherDayModelImplCopyWithImpl<_$WeatherDayModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherDayModelImplToJson(
      this,
    );
  }
}

abstract class _WeatherDayModel implements WeatherDayModel {
  factory _WeatherDayModel(
      {required final String datetime,
      required final num tempmax,
      required final num tempmin,
      required final num temp,
      required final String conditions,
      required final String icon}) = _$WeatherDayModelImpl;

  factory _WeatherDayModel.fromJson(Map<String, dynamic> json) =
      _$WeatherDayModelImpl.fromJson;

  @override
  String get datetime;
  @override
  num get tempmax;
  @override
  num get tempmin;
  @override
  num get temp;
  @override
  String get conditions;
  @override
  String get icon;
  @override
  @JsonKey(ignore: true)
  _$$WeatherDayModelImplCopyWith<_$WeatherDayModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
