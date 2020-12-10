import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:home_advisor/app_theme//screen_util-extension.dart';
import 'package:home_advisor/app_theme/app_colors.dart';
import 'package:home_advisor/ui/profile_edit/profile_editmodel.dart';
import 'package:home_advisor/ui/profile_view/profile_view.dart';
import 'package:stacked/stacked.dart';

class ProfileEdit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: false);
    return ViewModelBuilder<ProfileEditModel>.reactive(
        builder: (context, edit, child) => Scaffold(
              appBar: AppBar(
                elevation: 0.w,
                backgroundColor: Colors.white,
                flexibleSpace: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 30.0.w, bottom: 10.w),
                      child: Image.asset(
                        '${edit.logo}',
                        width: 150.w,
                      ),
                    ),
                  ],
                ),
                actions: [
                  IconButton(
                      icon: Icon(
                        Icons.search,
                        color: AppColor.blCommon,
                        size: 60.w,
                      ),
                      onPressed: () {})
                ],
              ),
              body: SingleChildScrollView(
                  child: Column(
                children: [
                  Stack(
                    children: [
                      InkWell(
                        onTap: () {}, //Implement Image Picker
                        child: Container(
                          height: 430.h,
                          color: Colors.grey,
                          child: Center(
                            child: Image.asset(
                              'assets/user.webp',
                              height: 100.h,
                              width: 100.w,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20.0.h),
                        child: Container(
                          child: InkWell(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.arrow_back_outlined,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    'Go Back',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                              onTap: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Profile()));
                              }),
                        ),
                      )
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(20.0.h),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 40.h,
                        ),
                        TextFormField(
                          onChanged: (value) {
                            edit.updateFN(value);
                          },
                          decoration: InputDecoration(
                              border: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColor.blCommon),
                              ),
                              hintText: 'First Name',
                              hintStyle: TextStyle(color: AppColor.blCommon)),
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        TextFormField(
                          onChanged: (value) {
                            edit.updateLN(value);
                          },
                          decoration: InputDecoration(
                              border: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColor.blCommon),
                              ),
                              hintText: 'Last Name',
                              hintStyle: TextStyle(color: AppColor.blCommon)),
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        TextFormField(
                          onChanged: (value) {
                            edit.updateEmail(value);
                          },
                          decoration: InputDecoration(
                              border: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColor.blCommon),
                              ),
                              hintText: 'Email',
                              hintStyle: TextStyle(color: AppColor.blCommon)),
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        TextFormField(
                          onChanged: (value) {
                            edit.updatePhn(value);
                          },
                          decoration: InputDecoration(
                              border: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColor.blCommon),
                              ),
                              hintText: 'Phone',
                              hintStyle: TextStyle(color: AppColor.blCommon)),
                        ),
                        SizedBox(
                          height: 80.0.h,
                        ),
                        FlatButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
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
                                "UPDATE",
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )),
            ),
        viewModelBuilder: () => ProfileEditModel());
  }
}
