import 'package:home_advisor/app/locator.dart';
import 'package:home_advisor/services/auth/firebase_auth_service.dart';
import 'package:stacked/stacked.dart';

class MainCategViewModel extends BaseViewModel {
  FirebaseAuthService _authService = locator<FirebaseAuthService>();
  String token;

  void iniToken() async {
    var response = await _authService.firebaseAuth.currentUser.getIdToken();
    if (response != null) {
      token = response;
      notifyListeners();
    }
  }

  void initState() {
    iniToken();
  }

  String logo = "lib/images/logo/logo.png";
  List<List<String>> categ = [
    ["Engineering", "lib/images/category_tile/pic2.png"],
    ["Maintenance", "lib/images/category_tile/pic1.png"],
    ["Inspection", "lib/images/category_tile/pic3.png"],
    ["Build Materials", "lib/images/category_tile/pic7.png"],
    ["Fit Outs", "lib/images/category_tile/pic6.png"],
    ["Promotion", "lib/images/category_tile/pic5.png"],
    ["Whole Saler", "lib/images/category_tile/pic4.png"]
  ];
}
