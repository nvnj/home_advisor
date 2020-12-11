import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:home_advisor/ui/otp_page/otp.dart';

class PhoneAuth {
  String phoneNo, smsCode;
  FirebaseAuth auth = FirebaseAuth.instance;
  static String verId;

  bool codeSent = false;

  Future<void> verifyPhone(phoneNo, context) async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: phoneNo,
      verificationCompleted: (PhoneAuthCredential credential) async {
        UserCredential user = await auth.signInWithCredential(credential);
        print("haaaaaaaaaaaajkdshhhhhhhhhhhhhhhhhhhhhdakljkfh");
        print(user.credential);
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

  Future<void> verifyOtp(code) async {
    PhoneAuthCredential phoneAuthCredential =
        PhoneAuthProvider.credential(verificationId: verId, smsCode: code);

    // Sign the user in (or link) with the credential
    await auth.signInWithCredential(phoneAuthCredential);
  }
}
