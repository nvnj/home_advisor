import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_advisor/app_theme/app_colors.dart';
import 'package:home_advisor/app_theme/text_styles.dart';
import 'package:home_advisor/ui/complete_profile/complete_profile_view.dart';
import 'package:pin_entry_text_field/pin_entry_text_field.dart';

class OtpStrings {
  static String header = "Enter OTP Recevied";
}

class OtpPage extends StatefulWidget {
  @override
  _OtpPageState createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // SizedBox(
                      //   height: size.height * .5 * .5,
                      // ),
                      Text(
                        OtpStrings.header,
                        style: AppTextStyles.s3(
                          AppColor.blCommon,
                        ).copyWith(fontSize: 30),
                      ),
                      PinEntryTextField(
                        fields: 5,
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
                                Navigator.pushNamed(
                                    context, CompleteProfile.id);
                              },
                              child: Text(
                                "CONFIRM",
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
