import 'package:home_advisor/app/locator.dart';
import 'package:home_advisor/services/auth/firebase_auth_service.dart';
import 'package:stacked/stacked.dart';

class SubCategViewModel extends BaseViewModel {
  FirebaseAuthService _authService = locator<FirebaseAuthService>();
  String token;

  void iniToken() async {
    var response = await _authService.firebaseAuth.currentUser.getIdToken();
    if (response != null) {
      token = response;
      print(token);
      notifyListeners();
    }
  }

  void initState() {
    iniToken();
  }

  List categ = [
    ["Cleaning", "lib/images/category_tile/pic16.png"],
    ["Painting", "lib/images/category_tile/pic8.png"],
    ["Gardening", "lib/images/category_tile/pic9.png"],
    ["A/C works", "lib/images/category_tile/pic17.png"],
    ["plumbing", "lib/images/category_tile/pic10.png"],
    ["Laundry", "lib/images/category_tile/pic11.png"],
    ["Flooring", "lib/images/category_tile/pic12.png"],
    ["Carpentry", "lib/images/category_tile/pic13.png"],
    ["Electrical", "lib/images/category_tile/pic15.png"],
    ["Car Wash", "lib/images/category_tile/pic14.png"]
  ];
}
