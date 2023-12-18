// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'internet_connection_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InternetConnectionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkInternet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkInternet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkInternet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckInternet value) checkInternet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckInternet value)? checkInternet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckInternet value)? checkInternet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InternetConnectionEventCopyWith<$Res> {
  factory $InternetConnectionEventCopyWith(InternetConnectionEvent value,
          $Res Function(InternetConnectionEvent) then) =
      _$InternetConnectionEventCopyWithImpl<$Res, InternetConnectionEvent>;
}

/// @nodoc
class _$InternetConnectionEventCopyWithImpl<$Res,
        $Val extends InternetConnectionEvent>
    implements $InternetConnectionEventCopyWith<$Res> {
  _$InternetConnectionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CheckInternetImplCopyWith<$Res> {
  factory _$$CheckInternetImplCopyWith(
          _$CheckInternetImpl value, $Res Function(_$CheckInternetImpl) then) =
      __$$CheckInternetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckInternetImplCopyWithImpl<$Res>
    extends _$InternetConnectionEventCopyWithImpl<$Res, _$CheckInternetImpl>
    implements _$$CheckInternetImplCopyWith<$Res> {
  __$$CheckInternetImplCopyWithImpl(
      _$CheckInternetImpl _value, $Res Function(_$CheckInternetImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckInternetImpl implements _CheckInternet {
  const _$CheckInternetImpl();

  @override
  String toString() {
    return 'InternetConnectionEvent.checkInternet()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckInternetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkInternet,
  }) {
    return checkInternet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkInternet,
  }) {
    return checkInternet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkInternet,
    required TResult orElse(),
  }) {
    if (checkInternet != null) {
      return checkInternet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckInternet value) checkInternet,
  }) {
    return checkInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckInternet value)? checkInternet,
  }) {
    return checkInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckInternet value)? checkInternet,
    required TResult orElse(),
  }) {
    if (checkInternet != null) {
      return checkInternet(this);
    }
    return orElse();
  }
}

abstract class _CheckInternet implements InternetConnectionEvent {
  const factory _CheckInternet() = _$CheckInternetImpl;
}

/// @nodoc
mixin _$InternetConnectionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() lostInternet,
    required TResult Function() connectedInternet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? lostInternet,
    TResult? Function()? connectedInternet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? lostInternet,
    TResult Function()? connectedInternet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LostInternet value) lostInternet,
    required TResult Function(_ConnectedInternet value) connectedInternet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LostInternet value)? lostInternet,
    TResult? Function(_ConnectedInternet value)? connectedInternet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LostInternet value)? lostInternet,
    TResult Function(_ConnectedInternet value)? connectedInternet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InternetConnectionStateCopyWith<$Res> {
  factory $InternetConnectionStateCopyWith(InternetConnectionState value,
          $Res Function(InternetConnectionState) then) =
      _$InternetConnectionStateCopyWithImpl<$Res, InternetConnectionState>;
}

/// @nodoc
class _$InternetConnectionStateCopyWithImpl<$Res,
        $Val extends InternetConnectionState>
    implements $InternetConnectionStateCopyWith<$Res> {
  _$InternetConnectionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LostInternetImplCopyWith<$Res> {
  factory _$$LostInternetImplCopyWith(
          _$LostInternetImpl value, $Res Function(_$LostInternetImpl) then) =
      __$$LostInternetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LostInternetImplCopyWithImpl<$Res>
    extends _$InternetConnectionStateCopyWithImpl<$Res, _$LostInternetImpl>
    implements _$$LostInternetImplCopyWith<$Res> {
  __$$LostInternetImplCopyWithImpl(
      _$LostInternetImpl _value, $Res Function(_$LostInternetImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LostInternetImpl implements _LostInternet {
  const _$LostInternetImpl();

  @override
  String toString() {
    return 'InternetConnectionState.lostInternet()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LostInternetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() lostInternet,
    required TResult Function() connectedInternet,
  }) {
    return lostInternet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? lostInternet,
    TResult? Function()? connectedInternet,
  }) {
    return lostInternet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? lostInternet,
    TResult Function()? connectedInternet,
    required TResult orElse(),
  }) {
    if (lostInternet != null) {
      return lostInternet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LostInternet value) lostInternet,
    required TResult Function(_ConnectedInternet value) connectedInternet,
  }) {
    return lostInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LostInternet value)? lostInternet,
    TResult? Function(_ConnectedInternet value)? connectedInternet,
  }) {
    return lostInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LostInternet value)? lostInternet,
    TResult Function(_ConnectedInternet value)? connectedInternet,
    required TResult orElse(),
  }) {
    if (lostInternet != null) {
      return lostInternet(this);
    }
    return orElse();
  }
}

abstract class _LostInternet implements InternetConnectionState {
  const factory _LostInternet() = _$LostInternetImpl;
}

/// @nodoc
abstract class _$$ConnectedInternetImplCopyWith<$Res> {
  factory _$$ConnectedInternetImplCopyWith(_$ConnectedInternetImpl value,
          $Res Function(_$ConnectedInternetImpl) then) =
      __$$ConnectedInternetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConnectedInternetImplCopyWithImpl<$Res>
    extends _$InternetConnectionStateCopyWithImpl<$Res, _$ConnectedInternetImpl>
    implements _$$ConnectedInternetImplCopyWith<$Res> {
  __$$ConnectedInternetImplCopyWithImpl(_$ConnectedInternetImpl _value,
      $Res Function(_$ConnectedInternetImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ConnectedInternetImpl implements _ConnectedInternet {
  const _$ConnectedInternetImpl();

  @override
  String toString() {
    return 'InternetConnectionState.connectedInternet()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ConnectedInternetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() lostInternet,
    required TResult Function() connectedInternet,
  }) {
    return connectedInternet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? lostInternet,
    TResult? Function()? connectedInternet,
  }) {
    return connectedInternet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? lostInternet,
    TResult Function()? connectedInternet,
    required TResult orElse(),
  }) {
    if (connectedInternet != null) {
      return connectedInternet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LostInternet value) lostInternet,
    required TResult Function(_ConnectedInternet value) connectedInternet,
  }) {
    return connectedInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LostInternet value)? lostInternet,
    TResult? Function(_ConnectedInternet value)? connectedInternet,
  }) {
    return connectedInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LostInternet value)? lostInternet,
    TResult Function(_ConnectedInternet value)? connectedInternet,
    required TResult orElse(),
  }) {
    if (connectedInternet != null) {
      return connectedInternet(this);
    }
    return orElse();
  }
}

abstract class _ConnectedInternet implements InternetConnectionState {
  const factory _ConnectedInternet() = _$ConnectedInternetImpl;
}
