import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:home_advisor/ui/otp_page/otp.dart';
import 'package:home_advisor/ui/homepage/home_page_view.dart';

class PhoneAuth with ChangeNotifier {
  String phoneNo, smsCode;
  FirebaseAuth auth = FirebaseAuth.instance;
  static String verId;

  bool codeSent = false;

  Future<void> verifyPhone(phoneNo, context) async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: phoneNo,
      verificationCompleted: (PhoneAuthCredential credential) async {
        //UserCredential signInCred = await auth.signInWithCredential(credential);
        var cred = FirebaseAuth.instance.currentUser;
        if (cred.phoneNumber != null) {
          Navigator.pushNamedAndRemoveUntil(
              context, HomePageView.id, (route) => false);
        } else {
          // Navigator.pop(context);
          print("Auth failed");
        }
      },
      verificationFailed: (FirebaseAuthException e) {
        if (e.code == 'invalid-phone-number') {
          print('The provided phone number is not valid.');
        } else
          print(e);
      },
      codeSent: (String verificationId, int resendToken) async {
        verId = verificationId;
        print(verId);
        print(
            "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
        // Update the UI - wait for the user to enter the SMS code
        Navigator.pushNamed(context, OtpPage.id);
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        verId = verificationId;
      },
    );
  }

  Future<void> verifyOtp(code, BuildContext context) async {
    PhoneAuthCredential phoneAuthCredential =
        PhoneAuthProvider.credential(verificationId: verId, smsCode: code);

    // Sign the user in (or link) with the credential
    // var signInCred = await auth.signInWithCredential(phoneAuthCredential);
    var cred = FirebaseAuth.instance.currentUser;
    if (cred.phoneNumber != null) {
      Navigator.pushNamedAndRemoveUntil(
          context, HomePageView.id, (route) => false);
    } else {
      // Navigator.pop(context);
      print("Auth failed");
    }
  }

  //StreamController<User> userController = StreamController<User>();
  // Stream<AuthUser> get onAuthStateChanged;

//   handleAuth() {
//     return StreamBuilder(
//         stream: FirebaseAuth.instance.authStateChanges(),
//         builder: (BuildContext context, snapshot) {
//           if (snapshot.hasData) {
//             return HomePageView();
//           } else {
//             return SignInPage();
//           }
//         });
//   }
}
