import 'package:flutter/cupertino.dart';
import 'package:wedding/models/services.dart';
import 'package:wedding/services/vendor_services.dart';

// ------------- Vender Services Item Provider ----------
class ServicesItemProvider with ChangeNotifier {
  List<Services> services = [];

  CategoryProvider() {
    getServices();
  }

  // Actions
  final ItemVendorServices = ItemVenderServices();

  Future<void> getServices() async {
    final itemvendorresponse = await ItemVendorServices.getServices();
    services = itemvendorresponse;
    print("provider $services");
    notifyListeners();
  }
}
