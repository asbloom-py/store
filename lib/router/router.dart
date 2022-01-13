import 'package:auto_route/auto_route.dart';
import 'package:store_web/screens/home/page.dart';
import 'package:store_web/screens/merchant/page_merchant.dart';
import 'package:store_web/screens/merchant/shop/page_shop.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route,Screen',
  routes: <AutoRoute>[
    AutoRoute(
      initial: true,
      path: '/',
      page: HomePage,
      children: [
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),
    //authentication routes
    AutoRoute(
      path: '/merchant/:merchant_id',
      page: MerchantPage,
      name: 'MerchantPage',
    ),
    AutoRoute(
      path: '/merchant/:merchant_id/shop/:shop_id',
      page: ShopPage,
      name: 'StorePage',
    ),

    RedirectRoute(path: '*', redirectTo: '/'),
  ],
)
class $AppRouter {}

//nested group route with a tab router
