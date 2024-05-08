import 'package:shared_package/shared_libs.dart';

import '../../../boostrap/config_reader.dart';
import '../../core/data/api.dart';
import '../../core/data/shared.dart';
import '../data/order_api.dart';

final orderApiProvider = Provider<OrderApi>(
    (ref) => OrderApi(apiService: Api.init(ref.read(sharedRef), Dio()), hostName: ConfigReader.serverApi()));
