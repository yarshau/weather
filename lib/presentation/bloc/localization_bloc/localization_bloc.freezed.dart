// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'localization_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocalizationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Locale locale) changeLang,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Locale locale)? changeLang,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Locale locale)? changeLang,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocalizatioInitial value) initial,
    required TResult Function(_ChangeLang value) changeLang,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocalizatioInitial value)? initial,
    TResult? Function(_ChangeLang value)? changeLang,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocalizatioInitial value)? initial,
    TResult Function(_ChangeLang value)? changeLang,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalizationEventCopyWith<$Res> {
  factory $LocalizationEventCopyWith(
          LocalizationEvent value, $Res Function(LocalizationEvent) then) =
      _$LocalizationEventCopyWithImpl<$Res, LocalizationEvent>;
}

/// @nodoc
class _$LocalizationEventCopyWithImpl<$Res, $Val extends LocalizationEvent>
    implements $LocalizationEventCopyWith<$Res> {
  _$LocalizationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LocalizatioInitialImplCopyWith<$Res> {
  factory _$$LocalizatioInitialImplCopyWith(_$LocalizatioInitialImpl value,
          $Res Function(_$LocalizatioInitialImpl) then) =
      __$$LocalizatioInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocalizatioInitialImplCopyWithImpl<$Res>
    extends _$LocalizationEventCopyWithImpl<$Res, _$LocalizatioInitialImpl>
    implements _$$LocalizatioInitialImplCopyWith<$Res> {
  __$$LocalizatioInitialImplCopyWithImpl(_$LocalizatioInitialImpl _value,
      $Res Function(_$LocalizatioInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LocalizatioInitialImpl implements _LocalizatioInitial {
  const _$LocalizatioInitialImpl();

  @override
  String toString() {
    return 'LocalizationEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LocalizatioInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Locale locale) changeLang,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Locale locale)? changeLang,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Locale locale)? changeLang,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocalizatioInitial value) initial,
    required TResult Function(_ChangeLang value) changeLang,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocalizatioInitial value)? initial,
    TResult? Function(_ChangeLang value)? changeLang,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocalizatioInitial value)? initial,
    TResult Function(_ChangeLang value)? changeLang,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _LocalizatioInitial implements LocalizationEvent {
  const factory _LocalizatioInitial() = _$LocalizatioInitialImpl;
}

/// @nodoc
abstract class _$$ChangeLangImplCopyWith<$Res> {
  factory _$$ChangeLangImplCopyWith(
          _$ChangeLangImpl value, $Res Function(_$ChangeLangImpl) then) =
      __$$ChangeLangImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Locale locale});
}

/// @nodoc
class __$$ChangeLangImplCopyWithImpl<$Res>
    extends _$LocalizationEventCopyWithImpl<$Res, _$ChangeLangImpl>
    implements _$$ChangeLangImplCopyWith<$Res> {
  __$$ChangeLangImplCopyWithImpl(
      _$ChangeLangImpl _value, $Res Function(_$ChangeLangImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = null,
  }) {
    return _then(_$ChangeLangImpl(
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc

class _$ChangeLangImpl implements _ChangeLang {
  const _$ChangeLangImpl({required this.locale});

  @override
  final Locale locale;

  @override
  String toString() {
    return 'LocalizationEvent.changeLang(locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeLangImpl &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeLangImplCopyWith<_$ChangeLangImpl> get copyWith =>
      __$$ChangeLangImplCopyWithImpl<_$ChangeLangImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Locale locale) changeLang,
  }) {
    return changeLang(locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Locale locale)? changeLang,
  }) {
    return changeLang?.call(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Locale locale)? changeLang,
    required TResult orElse(),
  }) {
    if (changeLang != null) {
      return changeLang(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocalizatioInitial value) initial,
    required TResult Function(_ChangeLang value) changeLang,
  }) {
    return changeLang(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocalizatioInitial value)? initial,
    TResult? Function(_ChangeLang value)? changeLang,
  }) {
    return changeLang?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocalizatioInitial value)? initial,
    TResult Function(_ChangeLang value)? changeLang,
    required TResult orElse(),
  }) {
    if (changeLang != null) {
      return changeLang(this);
    }
    return orElse();
  }
}

abstract class _ChangeLang implements LocalizationEvent {
  const factory _ChangeLang({required final Locale locale}) = _$ChangeLangImpl;

  Locale get locale;
  @JsonKey(ignore: true)
  _$$ChangeLangImplCopyWith<_$ChangeLangImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
