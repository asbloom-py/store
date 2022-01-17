// ignore_for_file: implicit_dynamic_parameter
// ignore_for_file: argument_type_not_assignable

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:store_web/core/network/interfaces/base_network_model.dart';

class NetworkDecoder {
  static NetworkDecoder shared = NetworkDecoder();

  K decode<T extends BaseNetworkModel<dynamic>, K>(
      {required Response<dynamic> response, required T responseType}) {
    if (response.data is List) {
      final list = response.data as List;
      final dataList =
          List<T>.from(list.map((item) => responseType.fromJson(item)).toList())
              as K;
      return dataList;
    } else {
      final list = <T>[];
      if (kDebugMode) {
        print(responseType.fromJson(response.data));
      }

      list.add(responseType.fromJson(response.data));
      return list as K;
    }
  }
}
