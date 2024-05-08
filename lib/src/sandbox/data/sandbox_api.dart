// import 'sandbox_service.dart' as service;

// class Api implements IApi {

// }

import 'package:shared_package/shared_libs.dart';

class SandboxApi {
  static final accounts = ['binhhm2009@gmail.com'];
  static activate() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('sandbox', 'true');
  }

  static deactivate() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('sandbox');
  }

  static Future<bool> isActivated() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.containsKey('sandbox');
  }
}
