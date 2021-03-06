import 'package:home_advisor/app/locator.dart';
import 'package:home_advisor/core/services/profile_service.dart';
import 'package:stacked/stacked.dart';

class ProfileEditModel extends BaseViewModel {
  final profileServices = locator<ProfileService>();
  String logo = 'assets/logo.png';

  void updateFN(value) {
    profileServices.setFirstName(value);
    notifyListeners();
  }

  void updateLN(value) {
    profileServices.setLastName(value);
    notifyListeners();
  }

  void updateEmail(value) {
    profileServices.setEmail(value);
    notifyListeners();
  }

  void updatePhn(value) {
    profileServices.setPhn(value);
    notifyListeners();
  }
}
