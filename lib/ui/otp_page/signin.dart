import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_advisor/app_theme/app_colors.dart';
import 'package:home_advisor/app_theme/text_styles.dart';
import 'package:home_advisor/ui/otp_page/phone_auth.dart';

class AppStrings {
  static String header = "Welcome Back\nHome Advisor";
  static String phoneHint = "Enter Your phone Numer";
  static String phoneErrorLen = "Phonenumber Should be 10 digits";
  static String phoneErrorEmpty = "Please Enter a number";
}

class SignInPage extends StatelessWidget {
  static const id = "signin_page";
  String code;

  TextEditingController controller = new TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      designSize: Size(750, 1334),
      allowFontScaling: false,
    );
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  height: size.height,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // SizedBox(
                      //   height: size.height * .5 * .5,
                      // ),
                      Text(
                        AppStrings.header,
                        style: AppTextStyles.s3(
                          AppColor.blCommon,
                        ).copyWith(fontSize: 30),
                      ),

                      Row(
                        children: [
                          CountryCodePicker(
                            onInit: (countryCode) {
                              code = countryCode.toString();
                            },
                            initialSelection: "+91",
                            onChanged: (countryCode) {
                              code = countryCode.toString();
                            },
                          ),
                          SizedBox(width: 10.0),
                          Expanded(
                            child: Form(
                              key: _formKey,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: AppStrings.phoneHint,
                                ),
                                keyboardType: TextInputType.number,
                                validator: (phoneNumber) {
                                  if (phoneNumber.isEmpty) {
                                    return AppStrings.phoneErrorEmpty;
                                  } else if (phoneNumber.length != 10) {
                                    return AppStrings.phoneErrorLen;
                                  } else {
                                    return null;
                                  }
                                },
                                controller: controller,
                                onChanged: (value) {
                                  _formKey.currentState.validate();
                                },
                              ),
                            ),
                          )
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 30.0),
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
                                if (_formKey.currentState.validate()) {
                                  var no = controller.text.trim();
                                  print("+91$no");
                                  PhoneAuth().verifyPhone("+91$no",context);
                                }
                              },
                              child: Text(
                                "SUBMIT",
                                style: TextStyle(fontSize: 20),
                              ),
                              textColor: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
