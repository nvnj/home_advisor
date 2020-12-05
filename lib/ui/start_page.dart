import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:home_advisor/app_theme/app_colors.dart';
import 'package:home_advisor/app_theme/screen_util-extension.dart';
import 'package:home_advisor/ui/intro_slider/intro_page_view.dart';

class StartPage extends StatelessWidget {
  static const id = "1";
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: false);
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 90.h,
            ),
            Center(
              child: Container(
                height: 200.h,
                child: Image.asset("assets/1/logo.png"),
              ),
            ),
            SizedBox(
              height: 300.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(left: 20, right: 10),
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
                        Navigator.pushNamed(context, IntroPage.id);
                      },
                      child: Text(
                        "ENGLISH",
                        style: TextStyle(fontSize: 30.f),
                      ),
                      textColor: Colors.white,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(left: 10, right: 20),
                    height: 100.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: LinearGradient(
                        colors: [AppColor.rdGradient2, AppColor.rdGradient1],
                      ),
                    ),
                    child: FlatButton(
                      onPressed: () {},
                      child: Text(
                        "عربى",
                        style: TextStyle(fontSize: 40.f),
                      ),
                      textColor: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 70.h,
            ),
          ],
        ),
      ),
    );
  }
}
