import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_advisor/app_theme/app_colors.dart';
import 'package:home_advisor/app_theme/text_styles.dart';
import 'package:home_advisor/ui/sub_category/sub_categ_view.dart';

class MainCategoryTile extends StatelessWidget {
  final String name;
  final String address;
  MainCategoryTile({this.name, this.address});
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
          onTap: () {
            Navigator.pushNamed(context, SubCategView.id);
          },
          child: Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        address,
                        color: AppColor.blCommon,
                      ),
                      Text(
                        name,
                        style:
                            AppTextStyles.textStyle(color: AppColor.blCommon),
                      )
                    ],
                  ),
                ),
                Align(
                    alignment: Alignment.bottomRight,
                    child: Icon(
                      Icons.arrow_forward,
                      size: 50.h,
                      color: AppColor.blLight,
                    ))
              ],
            ),
            elevation: 1,
          ),
        ));
  }
}
