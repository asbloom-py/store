import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_web/core/freezed/network_error.dart';
import 'package:store_web/resource/entity/store.dart';

part 'store.freezed.dart';

@freezed
class StoreState with _$StoreState {
  factory StoreState({
    Store? store,
    NetworkError? error,
    required bool loading,
  }) = _StoreState;
  const StoreState._();
}
