import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_web/core/network/interfaces/base_client_generator.dart';
import 'package:store_web/resource/repository/store.dart';

part 'json_api_client.freezed.dart';

@freezed
class PlaceHolderClient extends BaseClientGenerator with _$PlaceHolderClient {
  const PlaceHolderClient._() : super();
  factory PlaceHolderClient.posts(StoreParam param) = _Posts;

  @override
  String get baseURL => 'http://localhost:3000/';

  @override
  Map<String, dynamic> get header => {'Content-Type': 'application/json'};

  @override
  String get path {
    return when<String>(
      posts: (StoreParam param) =>
          'merchant/${param.merchantId}/store/${param.storeId}',
    );
  }

  @override
  String get method {
    return maybeWhen<String>(
      orElse: () => 'GET',
    );
  }

  @override
  dynamic get body {
    return maybeWhen(
      orElse: () {
        return null;
      },
    );
  }

  @override
  Map<String, dynamic>? get queryParameters {
    return maybeWhen(
      orElse: () {
        return null;
      },
    );
  }
}
