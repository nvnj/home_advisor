import 'package:flutter/material.dart';
import 'package:home_advisor/app/locator.dart';
import 'package:home_advisor/services/auth/auth_service.dart';
import 'package:home_advisor/services/auth/firebase_auth_service.dart';
import 'package:home_advisor/ui/homepage/home_page_view.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:stacked/stacked.dart';

class LoginViewModel extends BaseViewModel {
  AuthService _authService = locator<FirebaseAuthService>();

  PhoneAuthenticationSteps _currentStep = PhoneAuthenticationSteps.INIT;

  PhoneAuthenticationSteps get currentStep => _currentStep;

  set currentStep(PhoneAuthenticationSteps currentStep) {
    _currentStep = currentStep;
    switch (_currentStep) {
      case PhoneAuthenticationSteps.AUTHENTICATION_SUCCESS:
        setBusy(false);
        break;
      case PhoneAuthenticationSteps.AUTHENTICATION_FAILED:
      case PhoneAuthenticationSteps.AUTHENTICATION_FAILED_NETWWORK:
      case PhoneAuthenticationSteps.AUTO_RETRIVAL_TIMEOUT:
      case PhoneAuthenticationSteps.INVALID_OTP_ENTERED:
      case PhoneAuthenticationSteps.INIT:
        setBusy(false);
        break;
      case PhoneAuthenticationSteps.AUTO_RETRIEVING_CODE:
      case PhoneAuthenticationSteps.CODE_SENT:
        setBusy(false);
        break;
    }
    notifyListeners();
  }

  initState(BuildContext context) {
    _authService.onPhoneAuthenticationStepChanged.listen((event) {
      if (currentStep == PhoneAuthenticationSteps.AUTHENTICATION_SUCCESS)
        authSucessAction(context);
      currentStep = event;
    });
  }

  String _phoneNumber;

  String _otp;

  bool _isOtpRequested = false;

  bool get isOtpRequested => _isOtpRequested;

  set isOtpRequested(bool isOtpRequested) {
    _isOtpRequested = isOtpRequested;
    notifyListeners();
  }

  String get phoneNumber => _phoneNumber;

  set phoneNumber(String initialMobileValue) {
    _phoneNumber = initialMobileValue;
    notifyListeners();
  }

  String get otp => _otp;

  set otp(String value) {
    _otp = value;
    notifyListeners();
  }

  bool _isMobileNoValid = false;

  bool get isMobileNoValid => _isMobileNoValid;

  set isMobileNoValid(bool isMobileNoValid) {
    _isMobileNoValid = isMobileNoValid;
    notifyListeners();
  }

  void validatePhone() {
    setBusy(true);
    _authService.signInWithPhone(phoneNumber);
  }

  void validateOtp() {
    print(otp);
    _authService.validatePhoneOtp(otp);
  }

  String getHeaderText() {
    switch (currentStep) {
      case PhoneAuthenticationSteps.INIT:
      case PhoneAuthenticationSteps.AUTO_RETRIVAL_TIMEOUT:
      case PhoneAuthenticationSteps.AUTHENTICATION_FAILED:
      case PhoneAuthenticationSteps.AUTHENTICATION_FAILED_NETWWORK:
      case PhoneAuthenticationSteps.AUTO_RETRIEVING_CODE:
        return "Welcome Back\nHome Advisor";
      case PhoneAuthenticationSteps.INVALID_OTP_ENTERED:
      case PhoneAuthenticationSteps.CODE_SENT:
      case PhoneAuthenticationSteps.AUTHENTICATION_SUCCESS:
        return "Enter OTP Recevied";
    }
    return "Welcome Back\nHome Advisor";
  }

  String getButtonText() {
    switch (currentStep) {
      case PhoneAuthenticationSteps.INIT:
      case PhoneAuthenticationSteps.AUTO_RETRIEVING_CODE:
        return "SUBMIT";
      case PhoneAuthenticationSteps.CODE_SENT:
      case PhoneAuthenticationSteps.AUTHENTICATION_SUCCESS:
        return "CONFIRM";
      case PhoneAuthenticationSteps.AUTHENTICATION_FAILED_NETWWORK:
      case PhoneAuthenticationSteps.AUTO_RETRIVAL_TIMEOUT:
      case PhoneAuthenticationSteps.INVALID_OTP_ENTERED:
      case PhoneAuthenticationSteps.AUTHENTICATION_FAILED:
        return "RESEND OTP";
    }
    return "SUBMIT";
  }

  bool showOtp() {
    switch (currentStep) {
      case PhoneAuthenticationSteps.INIT:
      case PhoneAuthenticationSteps.AUTO_RETRIVAL_TIMEOUT:
      case PhoneAuthenticationSteps.AUTHENTICATION_FAILED:
      case PhoneAuthenticationSteps.AUTHENTICATION_FAILED_NETWWORK:
      case PhoneAuthenticationSteps.AUTO_RETRIEVING_CODE:
        return false;
      case PhoneAuthenticationSteps.INVALID_OTP_ENTERED:
      case PhoneAuthenticationSteps.CODE_SENT:
      case PhoneAuthenticationSteps.AUTHENTICATION_SUCCESS:
        return true;
    }
    return false;
  }

  Future<void> buttonAction(BuildContext context) async {
    if (currentStep == PhoneAuthenticationSteps.INIT) {
      validatePhone();
    } else if (currentStep == PhoneAuthenticationSteps.INVALID_OTP_ENTERED ||
        currentStep == PhoneAuthenticationSteps.CODE_SENT ||
        currentStep == PhoneAuthenticationSteps.AUTHENTICATION_SUCCESS) {
      validateOtp();
    } else if (currentStep == PhoneAuthenticationSteps.AUTHENTICATION_FAILED ||
        currentStep == PhoneAuthenticationSteps.AUTO_RETRIVAL_TIMEOUT ||
        currentStep ==
            PhoneAuthenticationSteps.AUTHENTICATION_FAILED_NETWWORK) {
      validatePhone();
    } else if (currentStep == PhoneAuthenticationSteps.AUTHENTICATION_SUCCESS) {
      authSucessAction(context);
    }
    return true;
  }

  void authSucessAction(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(
        context, HomePageView.id, (route) => false);
  }

  PhoneNumber getDefaultCountry() {
    return PhoneNumber(isoCode: "IN");
  }
}
