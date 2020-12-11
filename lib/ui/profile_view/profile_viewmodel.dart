import 'package:home_advisor/app/locator.dart';
import 'package:stacked/stacked.dart';

import '../../core/services/profile_service.dart';

class ProfileViewModel extends BaseViewModel {
  ProfileViewModel() {
    init();
  }
  final profileService = locator<ProfileService>();
  String name = '';
  String email = '';
  String phn = '';
  String logo = 'assets/logo.png';
  String profile = 'assets/profile.webp';
  String edit = 'assets/edit.png';

  void init() {
    names();
    emails();
    phns();
  }

  void names() {
    name = profileService.name;
    notifyListeners();
  }

  void emails() {
    email = profileService.email;
    notifyListeners();
  }

  void phns() {
    phn = profileService.phn;
    notifyListeners();
  }
}
