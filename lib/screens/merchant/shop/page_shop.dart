import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatelessWidget {
  const ShopPage(
      {@PathParam('shop_id') this.shopId = '',
      @PathParam('merchant_id') this.merchantId = ''});
  final String shopId;
  final String merchantId;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Shop Page"),
        ),
        body: LayoutBuilder(
          builder: (context, constraint) {
            return Container(
              height: constraint.maxHeight,
              width: constraint.maxWidth,
              color: Colors.orange,
              alignment: Alignment.center,
              child: Text('MerchantId is $merchantId, shopId is $shopId'),
            );
          },
        ));
  }
}
