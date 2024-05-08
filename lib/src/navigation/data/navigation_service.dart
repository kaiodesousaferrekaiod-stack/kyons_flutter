import 'package:shared_package/shared_libs.dart' show Unit;

import '../../navigation/app/router.dart';

Unit saveRedirecPath(String path) {
  return AppRouter.pushRedirect(path);
}
