import 'package:flutter/material.dart';
import 'package:home_advisor/app_theme/app_colors.dart';
import 'package:home_advisor/app_theme/text_styles.dart';
import 'package:home_advisor/app_theme/screen_util-extension.dart';

class OrdersOnGCard extends StatelessWidget {
  final String seriel;
  final String name;
  final String date;
  final String time;
  final String location;
  final String status;
  final String paymentStatus;
  OrdersOnGCard(
      {this.seriel,
      this.location,
      this.name,
      this.date,
      this.time,
      this.status,
      this.paymentStatus});
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    seriel,
                    style: AppTextStyles.textStyle(color: AppColor.blCommon),
                  ),
                  Text(
                    status,
                    style: AppTextStyles.textStyle(
                      fontType: FontType.bold,
                      color: AppColor.blCommon,
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(name),
                  Text(
                    paymentStatus,
                    style: AppTextStyles.textStyle(size: 20.f),
                  )
                ],
              ),
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
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "View Pay Milestones",
                      style: AppTextStyles.textStyle(
                          color: AppColor.blCommon, fontType: FontType.bold),
                    ),
                  ),
                  Text(
                    "Cancel",
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
