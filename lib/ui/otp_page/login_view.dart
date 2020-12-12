import 'package:flutter/material.dart';
import 'package:home_advisor/app_theme/app_colors.dart';
import 'package:home_advisor/app_theme/screen_util-extension.dart';
import 'package:home_advisor/app_theme/text_styles.dart';
import 'package:home_advisor/ui/otp_page/login_view_model.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:stacked/stacked.dart';

class LoginView extends StatelessWidget {
  static const String id = "LoginView";

  const LoginView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
      onModelReady: (model) => model.initState(context),
      builder: (context, model, child) => Scaffold(
        body: _Body(),
      ),
      viewModelBuilder: () => LoginViewModel(),
    );
  }
}

class _Body extends ViewModelWidget<LoginViewModel> {
  @override
  Widget build(BuildContext context, LoginViewModel model) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              model.getHeaderText(),
              style: AppTextStyles.s3(
                AppColor.blCommon,
              ).copyWith(fontSize: 30),
            ),
            SizedBox(height: 100.w),
            model.showOtp() == true ? _OtpInput() : _MobileInput(),
            SizedBox(height: 100.w),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  margin: EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    gradient: LinearGradient(
                      colors: [
                        AppColor.blGradient2,
                        AppColor.blGradient1,
                      ],
                    ),
                  ),
                  height: 100.h,
                  child: FlatButton(
                    onPressed: () {
                      if (model.isMobileNoValid) model.buttonAction(context);
                    },
                    child: Text(
                      model.getButtonText(),
                    ),
                    textColor: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _OtpInput extends ViewModelWidget<LoginViewModel> {
  @override
  Widget build(BuildContext context, LoginViewModel model) {
    return PinCodeTextField(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      length: 6,
      animationType: AnimationType.fade,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.underline,
        inactiveColor: Theme.of(context).focusColor,
        activeColor: Theme.of(context).focusColor,
        activeFillColor: Colors.transparent,
        inactiveFillColor: Colors.transparent,
        selectedFillColor: Colors.transparent,
        selectedColor: Theme.of(context).focusColor,
        borderRadius: BorderRadius.circular(5),
      ),
      animationDuration: Duration(milliseconds: 300),
      backgroundColor: Colors.transparent,
      enableActiveFill: true,
      onCompleted: (otp) {
        print("Completed");
        model.validateOtp();
      },
      onChanged: (value) {
        print(value);
        model.otp = value;
      },
      beforeTextPaste: (text) {
        print("Allowing to paste $text");
        //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
        //but you can show anything you want here, like your pop up saying wrong paste format or etc
        return true;
      },
      appContext: context,
    );
  }
}

class _MobileInput extends ViewModelWidget<LoginViewModel> {
  _MobileInput({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, LoginViewModel model) {
    return Container(
      color: Colors.transparent,
      child: InternationalPhoneNumberInput(
        initialValue: model.getDefaultCountry(),

        onInputChanged: (PhoneNumber number) {
          model.phoneNumber = number.phoneNumber.substring(3);
        },
        // initialValue: number,

        // autoValidate: true,
        onInputValidated: (bool value) {
          model.isMobileNoValid = value;
        },
        inputDecoration: new InputDecoration(
          fillColor: Colors.transparent,
          filled: true,
        ),
        ignoreBlank: true,
        // initialValue: model.initialMobileValue,
        selectorTextStyle: TextStyle(color: Colors.black),
        // inputBorder: OutlineInputBorder(),
        selectorConfig:
            SelectorConfig(selectorType: PhoneInputSelectorType.BOTTOM_SHEET),
        countrySelectorScrollControlled: true,
      ),
    );
  }
}
