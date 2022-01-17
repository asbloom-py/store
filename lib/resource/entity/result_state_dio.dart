import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_web/core/freezed/network_error.dart';

part 'result_state_dio.freezed.dart';

@freezed
class ResultState<T> with _$ResultState<T> {
  const factory ResultState.idle() = _Idle<T>;

  const factory ResultState.loading() = _Loading<T>;

  const factory ResultState.data({required T data}) = _Data<T>;

  const factory ResultState.error({required NetworkError error}) = _Error<T>;
}
