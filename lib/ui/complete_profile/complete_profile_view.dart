import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_advisor/app_theme/app_colors.dart';
import 'package:home_advisor/ui/homepage/home_page_view.dart';

class CompleteProfile extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  static const id = "3";

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: false);
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.h,
            ),
            Center(
              child: Container(
                height: 100.h,
                child: Image.asset("assets/1/logo.png"),
              ),
            ),
            SizedBox(
              height: 70.h,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Complete Profile",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(25.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                        decoration: const InputDecoration(labelText: 'Name'),
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          if (value.length < 2) {
                            return "Name is not long Enough";
                          } else
                            return "";
                        }),
                    SizedBox(
                      height: 10.h,
                    ),
                    TextFormField(
                        decoration: const InputDecoration(labelText: 'Email'),
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value.length < 2) {
                            return "email is not long Enough";
                          } else
                            return "";
                        }),
                    SizedBox(
                      height: 10.h,
                    ),
                    TextFormField(
                        decoration: const InputDecoration(labelText: 'phone'),
                        keyboardType: TextInputType.phone,
                        validator: (value) {
                          if (value.length != 10) {
                            return "Number is not long Enough";
                          } else
                            return "";
                        }),
                    SizedBox(
                      height: 10.h,
                    ),
                    TextFormField(
                        decoration:
                            const InputDecoration(labelText: 'Address1'),
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          if (value.length < 2) {
                            return "Address is not long Enough";
                          } else
                            return "";
                        }),
                    SizedBox(
                      height: 10.h,
                    ),
                    TextFormField(
                        decoration:
                            const InputDecoration(labelText: 'Address2'),
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          if (value.length < 2) {
                            return "Address is not long Enough";
                          } else
                            return "";
                        }),
                    SizedBox(
                      height: 10.h,
                    ),
                    TextFormField(
                        decoration: const InputDecoration(labelText: 'Area'),
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          if (value.length < 2) {
                            return "Area name is not long Enough";
                          } else
                            return "";
                        }),
                    SizedBox(
                      height: 10.h,
                    ),
                    TextFormField(
                        decoration: const InputDecoration(labelText: 'zipcode'),
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value.length != 6) {
                            return "code is not long Enough";
                          } else
                            return "";
                        }),
                    SizedBox(
                      height: 10.h,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
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
              width: 400.w,
              child: FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, HomePageView.id);
                },
                child: Text(
                  "Submit",
                  style: TextStyle(fontSize: 20),
                ),
                textColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
