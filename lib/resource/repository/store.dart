import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:store_web/core/freezed/network_error.dart';
import 'package:store_web/core/network/layers/network_executer.dart';
import 'package:store_web/resource/entity/json_api_client.dart';
import 'package:store_web/resource/entity/result_dio.dart';
import 'package:store_web/resource/entity/store.dart';

final storeRepository =
    Provider<StoreRepository>((ref) => StoreRepositoryImpl(ref.read));

abstract class StoreRepository {
  Future<Result<List<Store>, NetworkError>> fetchStore(StoreParam param);
}

class StoreRepositoryImpl implements StoreRepository {
  StoreRepositoryImpl(this.read);
  final Reader read;
  @override
  Future<Result<List<Store>, NetworkError>> fetchStore(
      StoreParam storeParam) async {
    if (kDebugMode) print('fetchStore');
    return NetworkExecuter.execute<Store, List<Store>>(
      route: PlaceHolderClient.posts(storeParam),
      responseType: Store(name: '', storeId: ''),
    );
  }
}

class StoreParam {
  StoreParam({
    required this.storeId,
    required this.merchantId,
  });
  String storeId;
  String merchantId;
}
