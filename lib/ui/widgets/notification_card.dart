import 'package:flutter/material.dart';
import 'package:home_advisor/app_theme/app_colors.dart';
import 'package:home_advisor/app_theme/text_styles.dart';
import 'package:flutter_screenutil/size_extension.dart';

class NotificationCard extends StatelessWidget {
  final String noti;
  final String date;
  final String time;
  final String image;
  NotificationCard({this.date, this.noti, this.time, this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 250.h,
        padding: EdgeInsets.only(left: 10, right: 10, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  image,
                  height: 80,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(15),
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          noti,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              date,
                              style: AppTextStyles.textStyle(
                                  color: AppColor.blCommon),
                            ),
                            Text(
                              time,
                              style: AppTextStyles.textStyle(
                                  color: AppColor.blCommon),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Divider(
              thickness: 01,
            )
          ],
        ));
  }
}
