import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:home_advisor/app_theme//screen_util-extension.dart';
import 'package:stacked/stacked.dart';

import '../../app_theme/app_colors.dart';
import '../../app_theme/text_styles.dart';
import 'change_passwordviewmodel.dart';

class PasswordChange extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: false);
    return ViewModelBuilder<PasswordChangeModel>.reactive(
        builder: (context, password, child) => SafeArea(
              child: Scaffold(
                appBar: PreferredSize(
                  preferredSize: Size.fromHeight(100.h),
                  child: AppBar(
                    flexibleSpace: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                        colors: [AppColor.blGradient2, AppColor.blGradient1],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                      )),
                      child: Padding(
                        padding: EdgeInsets.only(left: 20.w),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Row(
                                children: [
                                  Icon(Icons.arrow_back_outlined,
                                      color: Colors.white),
                                  Text('Go Back',
                                      style: AppTextStyles.s1(Colors.white))
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text('Change Password',
                                style: TextStyle(
                                    fontSize: 40.f, color: Colors.white))
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                body: Padding(
                  padding: EdgeInsets.all(20.w),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20.h,
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Old Password',
                        ),
                        onChanged: (value) => password.old(value),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'New Password',
                        ),
                        onChanged: (value) => password.newPass(value),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Confirm Password',
                        ),
                        onChanged: (value) => password.confirmPass(value),
                      ),
                      SizedBox(
                        height: 60.h,
                      ),
                      FlatButton(
                        onPressed: password.buttonFunction,
                        child: Ink(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  AppColor.rdGradient2,
                                  AppColor.rdGradient1
                                ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              borderRadius: BorderRadius.circular(5.0)),
                          child: Container(
                            constraints: BoxConstraints(
                                maxWidth: 165.0, minHeight: 50.0),
                            alignment: Alignment.center,
                            child: Text(
                              'CHANGE PASSWORD',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
        viewModelBuilder: () => PasswordChangeModel());
  }
}
