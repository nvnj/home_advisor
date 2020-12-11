import 'package:flutter/material.dart';
import 'package:home_advisor/app_theme/app_colors.dart';
import 'package:home_advisor/app_theme/text_styles.dart';
import 'package:home_advisor/app_theme/screen_util-extension.dart';

class OrdersCard extends StatelessWidget {
  final String seriel;
  final String name;
  final String date;
  final String time;
  final String location;
  OrdersCard({this.seriel, this.location, this.name, this.date, this.time});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: 350.h,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey, width: 0.5),
            borderRadius: BorderRadius.circular(5)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                seriel,
                style: AppTextStyles.textStyle(color: AppColor.blCommon),
              ),
              Text(name),
              Row(
                children: [
                  Text(
                    "Date : ",
                    style: AppTextStyles.textStyle(fontType: FontType.bold),
                  ),
                  Text(date)
                ],
              ),
              Row(
                children: [
                  Text(
                    "Time :",
                    style: AppTextStyles.textStyle(fontType: FontType.bold),
                  ),
                  Text(time)
                ],
              ),
              Text(
                "Location :" + location,
                style: AppTextStyles.textStyle(fontType: FontType.bold),
              ),
              Divider(
                thickness: 0.5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Cancel",
                    style: AppTextStyles.textStyle(
                        color: AppColor.blCommon, fontType: FontType.bold),
                  ),
                  Text(
                    "View vendors",
                    style: AppTextStyles.textStyle(
                        color: AppColor.blCommon, fontType: FontType.bold),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
