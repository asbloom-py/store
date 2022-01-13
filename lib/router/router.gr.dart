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
import 'package:store_web/screens/merchant/shop/page_shop.dart' as _i3;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    HomePageRoute.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData, child: _i1.HomePage());
    },
    MerchantPage.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<MerchantPageArgs>(
          orElse: () => MerchantPageArgs(
              merchantId: pathParams.getString('merchant_id', '')));
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i2.MerchantPage(merchantId: args.merchantId));
    },
    StorePage.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<StorePageArgs>(
          orElse: () => StorePageArgs(
              shopId: pathParams.getString('shop_id', ''),
              merchantId: pathParams.getString('merchant_id', '')));
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData,
          child:
              _i3.ShopPage(shopId: args.shopId, merchantId: args.merchantId));
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
        _i4.RouteConfig(MerchantPage.name, path: '/merchant/:merchant_id'),
        _i4.RouteConfig(StorePage.name,
            path: '/merchant/:merchant_id/shop/:shop_id'),
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
  MerchantPage({String merchantId = ''})
      : super(MerchantPage.name,
            path: '/merchant/:merchant_id',
            args: MerchantPageArgs(merchantId: merchantId),
            rawPathParams: {'merchant_id': merchantId});

  static const String name = 'MerchantPage';
}

class MerchantPageArgs {
  const MerchantPageArgs({this.merchantId = ''});

  final String merchantId;

  @override
  String toString() {
    return 'MerchantPageArgs{merchantId: $merchantId}';
  }
}

/// generated route for
/// [_i3.ShopPage]
class StorePage extends _i4.PageRouteInfo<StorePageArgs> {
  StorePage({String shopId = '', String merchantId = ''})
      : super(StorePage.name,
            path: '/merchant/:merchant_id/shop/:shop_id',
            args: StorePageArgs(shopId: shopId, merchantId: merchantId),
            rawPathParams: {'shop_id': shopId, 'merchant_id': merchantId});

  static const String name = 'StorePage';
}

class StorePageArgs {
  const StorePageArgs({this.shopId = '', this.merchantId = ''});

  final String shopId;

  final String merchantId;

  @override
  String toString() {
    return 'StorePageArgs{shopId: $shopId, merchantId: $merchantId}';
  }
}
