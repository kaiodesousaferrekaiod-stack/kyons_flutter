import 'package:shared_package/shared_libs.dart';

import 'balance.dart';
import 'inventory.dart';
import 'package.dart';
import 'transaction.dart';

abstract class IOrderApi {
  Future<Unit> getFreeTrial();
  Future<Balance> getBalance();
  Future<Inventory> getInventory();
  Future<List<Transaction>> getTransactions();
  Future<List<Package>> getPackages();
  Future<Unit> orderPackage(Package package, int quantity);
}
