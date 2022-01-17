// ignore_for_file: unnecessary_cast
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_web/core/network/interfaces/base_network_model.dart';

part 'store.freezed.dart';
part 'store.g.dart';

@freezed
class Store extends BaseNetworkModel<Store> with _$Store {
  factory Store({
    required String storeId,
    required String name,
  }) = _Store;
  Store._();
  factory Store.fromJson(Map<String, dynamic> json) => _$StoreFromJson(json);

  @override
  Store fromJson(Map<String, dynamic> json) {
    return Store.fromJson(json);
  }
}
