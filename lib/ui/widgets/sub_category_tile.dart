import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_advisor/app_theme/app_colors.dart';
import 'package:home_advisor/app_theme/text_styles.dart';

class SubCategoryTile extends StatelessWidget {
  final String name;
  final String address;
  SubCategoryTile({this.name, this.address});
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: false);
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(80.w))),
        height: 200.h,
        width: 350.w,
        child: GestureDetector(
          onTap: () {},
          child: Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      name,
                      style: AppTextStyles.textStyle(color: AppColor.blCommon),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Image.asset(
                      address,
                      color: AppColor.blCommon,
                    ),
                  ],
                ),
              ],
            ),
            elevation: 1,
          ),
        ));
  }
}
