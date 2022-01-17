import 'dart:io';

import 'package:dio/dio.dart';
import 'package:store_web/core/network/interfaces/base_client_generator.dart';
import 'package:store_web/core/network/network_options/network_options.dart';

class NetworkCreator {
  static NetworkCreator shared = NetworkCreator();
  final Dio _client = Dio();

  Future<Response<dynamic>> request(
      {required BaseClientGenerator route, NetworkOptions? options}) {
    return _client.fetch(RequestOptions(
        baseUrl: route.baseURL,
        method: route.method,
        path: route.path,
        queryParameters: route.queryParameters,
        data: route.body,
        sendTimeout: route.sendTimeout,
        receiveTimeout: route.sendTimeout,
        onReceiveProgress: options?.onReceiveProgress,
        validateStatus: (statusCode) =>
            statusCode! >= HttpStatus.ok &&
            statusCode <= HttpStatus.multipleChoices));
  }
}
