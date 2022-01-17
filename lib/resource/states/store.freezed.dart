// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'store.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StoreStateTearOff {
  const _$StoreStateTearOff();

  _StoreState call({Store? store, NetworkError? error, required bool loading}) {
    return _StoreState(
      store: store,
      error: error,
      loading: loading,
    );
  }
}

/// @nodoc
const $StoreState = _$StoreStateTearOff();

/// @nodoc
mixin _$StoreState {
  Store? get store => throw _privateConstructorUsedError;
  NetworkError? get error => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StoreStateCopyWith<StoreState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreStateCopyWith<$Res> {
  factory $StoreStateCopyWith(
          StoreState value, $Res Function(StoreState) then) =
      _$StoreStateCopyWithImpl<$Res>;
  $Res call({Store? store, NetworkError? error, bool loading});

  $StoreCopyWith<$Res>? get store;
  $NetworkErrorCopyWith<$Res>? get error;
}

/// @nodoc
class _$StoreStateCopyWithImpl<$Res> implements $StoreStateCopyWith<$Res> {
  _$StoreStateCopyWithImpl(this._value, this._then);

  final StoreState _value;
  // ignore: unused_field
  final $Res Function(StoreState) _then;

  @override
  $Res call({
    Object? store = freezed,
    Object? error = freezed,
    Object? loading = freezed,
  }) {
    return _then(_value.copyWith(
      store: store == freezed
          ? _value.store
          : store // ignore: cast_nullable_to_non_nullable
              as Store?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as NetworkError?,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $StoreCopyWith<$Res>? get store {
    if (_value.store == null) {
      return null;
    }

    return $StoreCopyWith<$Res>(_value.store!, (value) {
      return _then(_value.copyWith(store: value));
    });
  }

  @override
  $NetworkErrorCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $NetworkErrorCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc
abstract class _$StoreStateCopyWith<$Res> implements $StoreStateCopyWith<$Res> {
  factory _$StoreStateCopyWith(
          _StoreState value, $Res Function(_StoreState) then) =
      __$StoreStateCopyWithImpl<$Res>;
  @override
  $Res call({Store? store, NetworkError? error, bool loading});

  @override
  $StoreCopyWith<$Res>? get store;
  @override
  $NetworkErrorCopyWith<$Res>? get error;
}

/// @nodoc
class __$StoreStateCopyWithImpl<$Res> extends _$StoreStateCopyWithImpl<$Res>
    implements _$StoreStateCopyWith<$Res> {
  __$StoreStateCopyWithImpl(
      _StoreState _value, $Res Function(_StoreState) _then)
      : super(_value, (v) => _then(v as _StoreState));

  @override
  _StoreState get _value => super._value as _StoreState;

  @override
  $Res call({
    Object? store = freezed,
    Object? error = freezed,
    Object? loading = freezed,
  }) {
    return _then(_StoreState(
      store: store == freezed
          ? _value.store
          : store // ignore: cast_nullable_to_non_nullable
              as Store?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as NetworkError?,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_StoreState extends _StoreState {
  _$_StoreState({this.store, this.error, required this.loading}) : super._();

  @override
  final Store? store;
  @override
  final NetworkError? error;
  @override
  final bool loading;

  @override
  String toString() {
    return 'StoreState(store: $store, error: $error, loading: $loading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StoreState &&
            const DeepCollectionEquality().equals(other.store, store) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.loading, loading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(store),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(loading));

  @JsonKey(ignore: true)
  @override
  _$StoreStateCopyWith<_StoreState> get copyWith =>
      __$StoreStateCopyWithImpl<_StoreState>(this, _$identity);
}

abstract class _StoreState extends StoreState {
  factory _StoreState(
      {Store? store,
      NetworkError? error,
      required bool loading}) = _$_StoreState;
  _StoreState._() : super._();

  @override
  Store? get store;
  @override
  NetworkError? get error;
  @override
  bool get loading;
  @override
  @JsonKey(ignore: true)
  _$StoreStateCopyWith<_StoreState> get copyWith =>
      throw _privateConstructorUsedError;
}
