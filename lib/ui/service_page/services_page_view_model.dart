import 'package:home_advisor/app/locator.dart';
import 'package:home_advisor/services/auth/firebase_auth_service.dart';
import 'package:stacked/stacked.dart';

class ServicesPageViewModel extends BaseViewModel {
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
}
