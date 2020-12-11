import 'package:country_code_picker/country_code_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_advisor/app/locator.dart';
import 'package:home_advisor/app_theme/app_colors.dart';
import 'package:home_advisor/app_theme/text_styles.dart';
import 'package:home_advisor/services/auth/firebase_auth_service.dart';
import 'package:home_advisor/ui/otp_page/otp.dart';

class AppStrings {
  static String header = "Welcome Back\nHome Advisor";
  static String phoneHint = "Enter Your phone Numer";
  static String phoneErrorLen = "Phonenumber Should be 10 digits";
  static String phoneErrorEmpty = "Please Enter a number";
  static String header2 = "Enter OTP Received";
}

class SignInPage extends StatefulWidget {
  static const String id = "SignInPage";
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  TextEditingController controller = new TextEditingController();
  final FirebaseAuthService _firebaseAuthService =
      locator<FirebaseAuthService>();

  final _phFormKey = GlobalKey<FormState>();

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
                            onChanged: (countryCode) {},
                          ),
                          SizedBox(width: 10.0),
                          Expanded(
                            child: Form(
                              key: _phFormKey,
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
                                onChanged: (value) {
                                  _phFormKey.currentState.validate();
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
                                if (_phFormKey.currentState.validate()) {
                                  verifyPhone();
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //     builder: (context) => OtpPage(),
                                  //   ),
                                  // );
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

  void verifyPhone() async {}

  void signInWithPhone() async {}
}
