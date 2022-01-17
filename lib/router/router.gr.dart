// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:store_web/screens/home/page.dart' as _i1;
import 'package:store_web/screens/merchant/page_merchant.dart' as _i2;
import 'package:store_web/screens/merchant/store/page_store.dart' as _i3;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    HomePageRoute.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    MerchantPage.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<MerchantPageArgs>(
          orElse: () => MerchantPageArgs(
              merchantId: pathParams.getString('merchant_id', '')));
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i2.MerchantPage(key: args.key, merchantId: args.merchantId));
    },
    StorePage.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<StorePageArgs>(
          orElse: () => StorePageArgs(
              storeId: pathParams.getString('store_id', ''),
              merchantId: pathParams.getString('merchant_id', '')));
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i3.StorePage(
              key: args.key,
              storeId: args.storeId,
              merchantId: args.merchantId));
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(HomePageRoute.name, path: '/', children: [
          _i4.RouteConfig('*#redirect',
              path: '*',
              parent: HomePageRoute.name,
              redirectTo: '',
              fullMatch: true)
        ]),
        _i4.RouteConfig(MerchantPage.name, path: '/merchant'),
        _i4.RouteConfig(StorePage.name,
            path: '/merchant/:merchant_id/store/:store_id'),
        _i4.RouteConfig('*#redirect',
            path: '*', redirectTo: '/', fullMatch: true)
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomePageRoute extends _i4.PageRouteInfo<void> {
  const HomePageRoute({List<_i4.PageRouteInfo>? children})
      : super(HomePageRoute.name, path: '/', initialChildren: children);

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i2.MerchantPage]
class MerchantPage extends _i4.PageRouteInfo<MerchantPageArgs> {
  MerchantPage({_i5.Key? key, String merchantId = ''})
      : super(MerchantPage.name,
            path: '/merchant',
            args: MerchantPageArgs(key: key, merchantId: merchantId),
            rawPathParams: {'merchant_id': merchantId});

  static const String name = 'MerchantPage';
}

class MerchantPageArgs {
  const MerchantPageArgs({this.key, this.merchantId = ''});

  final _i5.Key? key;

  final String merchantId;

  @override
  String toString() {
    return 'MerchantPageArgs{key: $key, merchantId: $merchantId}';
  }
}

/// generated route for
/// [_i3.StorePage]
class StorePage extends _i4.PageRouteInfo<StorePageArgs> {
  StorePage({_i5.Key? key, String storeId = '', String merchantId = ''})
      : super(StorePage.name,
            path: '/merchant/:merchant_id/store/:store_id',
            args: StorePageArgs(
                key: key, storeId: storeId, merchantId: merchantId),
            rawPathParams: {'store_id': storeId, 'merchant_id': merchantId});

  static const String name = 'StorePage';
}

class StorePageArgs {
  const StorePageArgs({this.key, this.storeId = '', this.merchantId = ''});

  final _i5.Key? key;

  final String storeId;

  final String merchantId;

  @override
  String toString() {
    return 'StorePageArgs{key: $key, storeId: $storeId, merchantId: $merchantId}';
  }
}
