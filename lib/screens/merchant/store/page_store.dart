import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:store_web/resource/repository/store.dart';
import 'package:store_web/resource/view/store_view.dart';

class StorePage extends StatelessWidget {
  StorePage({
    Key? key,
    @PathParam('store_id') this.storeId = '',
    @PathParam('merchant_id') this.merchantId = '',
  }) : super(key: key);
  final String storeId;
  final String merchantId;

  @override
  Widget build(BuildContext context) {
    final _param = StoreParam(storeId: storeId, merchantId: merchantId);
    return Scaffold(
        appBar: AppBar(
          title: Text('Store Page'),
        ),
        body: LayoutBuilder(
          builder: (context, constraint) {
            return Container(
                height: constraint.maxHeight,
                width: constraint.maxWidth,
                color: Colors.orange,
                alignment: Alignment.center,
                child: HookConsumer(builder: (context, ref, child) {
                  final _store = ref.watch(
                      storeViewModel(_param).select((value) => value.store));
                  final _loading = ref.watch(
                      storeViewModel(_param).select((value) => value.loading));

                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Store Info'),
                      if (_loading) const CircularProgressIndicator(),
                      if (!_loading && _store != null)
                        Text('store name is ${_store.name}'),
                      if (!_loading && _store != null)
                        Text('store id is ${_store.storeId}')
                    ],
                  );
                }));
          },
        ));
  }
}
