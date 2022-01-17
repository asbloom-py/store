import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class MerchantPage extends StatelessWidget {
  const MerchantPage({
    Key? key,
    @PathParam('merchant_id') this.merchantId = '',
  }) : super(key: key);
  final String merchantId;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Merchant Screen'),
        ),
        body: LayoutBuilder(
          builder: (context, constraint) {
            return Container(
              height: constraint.maxHeight,
              width: constraint.maxWidth,
              color: Colors.orange,
              alignment: Alignment.center,
              child: Text('merchantId is $merchantId'),
            );
          },
        ));
  }
}
