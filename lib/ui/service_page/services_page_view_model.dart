import 'dart:developer';

import 'package:home_advisor/core/models/service_types.dart';
import 'package:home_advisor/core/services/category_service..dart';
import 'package:stacked/stacked.dart';

class ServicesPageViewModel extends BaseViewModel {
  List<ServicesCategory> _servicesTypes = [];

  List<ServicesCategory> get categories => _servicesTypes;

  List<ServicesCategory> getDiffrentCategoryOfService() {
    _servicesTypes.addAll(CategoryService().getdifferrentTypesOfServices());
    notifyListeners();
  }
}
