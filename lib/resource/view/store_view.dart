import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:store_web/resource/repository/store.dart';
import 'package:store_web/resource/states/store.dart';

final storeViewModel = StateNotifierProvider.autoDispose
    .family<StoreViewModel, StoreState, StoreParam>((ref, StoreParam param) {
  return StoreViewModel(ref, param);
});

class StoreViewModel extends StateNotifier<StoreState> with LocatorMixin {
  StoreViewModel(
    this.ref,
    this.param,
  ) : super(StoreState(loading: true)) {
    initState();
  }

  final Ref ref;
  final StoreParam param;
  @override
  void initState() {
    super.initState();
    getStore();
  }

  Future<void> getStore() async {
    final r = await ref.read(storeRepository).fetchStore(param);
    r.when(success: (stores) {
      state = state.copyWith(store: stores[0]);
    }, failure: (networkError) {
      state = state.copyWith(error: networkError);
    });
    state = state.copyWith(loading: false);
    return;
  }
}
