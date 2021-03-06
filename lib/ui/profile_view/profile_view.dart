import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:home_advisor/app_theme/app_colors.dart';
import 'package:home_advisor/app_theme/screen_util-extension.dart';
import 'package:stacked/stacked.dart';

import '../profile_edit/profile_edit.dart';
import 'profile_viewmodel.dart';
import 'package:home_advisor/ui/notification_page/notification_page_view.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: false);
    return ViewModelBuilder.reactive(
        builder: (context, model, child) => Scaffold(
              appBar: AppBar(
                elevation: 0.w,
                leading: SizedBox(),
                backgroundColor: Colors.white,
                flexibleSpace: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 30.0.w, bottom: 10.w),
                      child: Image.asset(
                        '${model.logo}',
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
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Image.asset(
                          '${model.profile}',
                          fit: BoxFit.contain,
                        ),
                      ],
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 650.w, top: 10.0.h),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProfileEdit()));
                          },
                          child: Container(
                            height: 50.0.h,
                            width: 60.0.w,
                            child: Image.asset('${model.edit}'),
                            decoration: BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius: BorderRadius.circular(100.0)),
                          ),
                        )),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 230.0.h),
                        Container(
                            margin: EdgeInsets.only(left: 20.0.h),
                            child: Text(
                              '${model.name}',
                              style: TextStyle(
                                  fontSize: 44.f, color: Colors.white),
                            )),
                        SizedBox(
                          height: 15.0.h,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.16,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: Colors.white),
                          margin: EdgeInsets.all(20.0.h),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ListTile(
                                  title: Text(
                                    '${model.email}',
                                  ),
                                ),
                                Divider(
                                  height: 1.h,
                                ),
                                ListTile(
                                  title: Text('${model.phn}'),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.0.h,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5.0)),
                          margin: EdgeInsets.all(20.0.h),
                          child: SizedBox(
                            height: 390.0.h,
                            child: ListView(
                              children: [
                                ListTile(
                                  title: Text('FAQ'),
                                ),
                                Divider(
                                  height: 1.h,
                                ),
                                ListTile(title: Text('Privacy Policy')),
                                Divider(
                                  height: 1.h,
                                ),
                                ListTile(title: Text('Terms & Conditions')),
                                Divider(
                                  height: 1.h,
                                ),
                                GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, NotificationPage.id);
                                    },
                                    child:
                                        ListTile(title: Text('Notifications'))),
                                Divider(
                                  height: 1.h,
                                ),
                                ListTile(title: Text('Contact Us')),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.0.h,
                        ),
                        Container(
                          margin: EdgeInsets.all(20.0.h),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5.0)),
                          height: 80.0.h,
                          child: ListView(
                              children: [ListTile(title: Text('Logout'))]),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
        viewModelBuilder: () => ProfileViewModel());
  }
}
