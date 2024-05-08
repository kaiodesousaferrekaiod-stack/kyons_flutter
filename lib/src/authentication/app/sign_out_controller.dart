import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_package/shared_libs.dart';

import '../../sandbox/data/sandbox_api.dart';
import '../../tracking/app/tracking_provider.dart';
import 'auth_provider.dart';

part 'sign_out_controller.g.dart';

@riverpod
class SignOutController extends _$SignOutController {
  @override
  bool build() => false;
  Future<Unit> signOut() async {
    await SandboxApi.deactivate();
    await ref.read(authNotifierProvider.notifier).signOut();
    ref.read(trackingNotifierProvider.notifier).dispose();
    state = true;
    return unit;
  }
}
