import 'dart:developer';

import 'package:home_advisor/models/cleaning_types.dart';
import 'package:home_advisor/services/cleaing_service..dart';
import 'package:stacked/stacked.dart';

class ChooseCleaningViewModel extends BaseViewModel {
  List<CleaningCategory> _cleaningTypes = [];

  List<CleaningCategory> get categories => _cleaningTypes;

  List<CleaningCategory> getDiffrentCategoryOfService() {
    _cleaningTypes.addAll(CleaningCategoryService().getdifferrentTypesOfCleaningServices());
    notifyListeners();
  }
}
