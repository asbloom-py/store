// ignore_for_file: avoid_catching_errors

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:store_web/core/freezed/network_error.dart';
import 'package:store_web/core/network/interfaces/base_client_generator.dart';
import 'package:store_web/core/network/interfaces/base_network_model.dart';
import 'package:store_web/core/network/layers/network_connectivity.dart';
import 'package:store_web/core/network/layers/network_creator.dart';
import 'package:store_web/core/network/layers/network_decoder.dart';
import 'package:store_web/core/network/network_options/network_options.dart';
import 'package:store_web/resource/entity/result_dio.dart';

// ignore: avoid_classes_with_only_static_members
class NetworkExecuter {
  static Future<Result<K, NetworkError>>
      execute<T extends BaseNetworkModel<dynamic>, K>(
          {required BaseClientGenerator route,
          required T responseType,
          NetworkOptions? options}) async {
    // Check Network Connectivity
    if (await NetworkConnectivity.status) {
      try {
        final response =
            await NetworkCreator.shared.request(route: route, options: options);
        final data = NetworkDecoder.shared
            .decode<T, K>(response: response, responseType: responseType);
        return Result.success(data);

        // NETWORK ERROR
      } on DioError catch (diorError) {
        if (kDebugMode) {
          print('$route => ${NetworkError.request(error: diorError)}');
          print(diorError.message);
        }
        return Result.failure(NetworkError.request(error: diorError));

        // TYPE ERROR
      } on TypeError catch (e) {
        if (kDebugMode) {
          print('$route => ${NetworkError.type(error: e.toString())}');
        }
        return Result.failure(NetworkError.type(error: e.toString()));
      }

      // No Internet Connection
    } else {
      if (kDebugMode) {
        print(
            const NetworkError.connectivity(message: 'No Internet Connection'));
      }
      return const Result.failure(
          NetworkError.connectivity(message: 'No Internet Connection'));
    }
  }
}
