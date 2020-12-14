import 'package:flutter/material.dart';
import 'package:home_advisor/app_theme/app_colors.dart';
import 'package:home_advisor/app_theme/text_styles.dart';

class PayMileStoneCard extends StatelessWidget {
  final String name;
  final String date;

  final String status;
  final String price;
  PayMileStoneCard({this.name, this.date, this.price, this.status});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 0.2),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(right: 10, left: 10, top: 20, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name,
                style: AppTextStyles.textStyle(color: AppColor.blCommon)),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(price,
                    style: AppTextStyles.textStyle(color: AppColor.blCommon)),
                Text(date,
                    style: AppTextStyles.textStyle(color: AppColor.blCommon)),
                status == "Paid"
                    ? Container(
                        padding: const EdgeInsets.only(right: 25),
                        child: Text(status,
                            style: AppTextStyles.textStyle(
                                color: AppColor.blCommon)),
                      )
                    : Container(
                        height: 35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            gradient: LinearGradient(colors: [
                              AppColor.rdGradient2,
                              AppColor.rdGradient1
                            ])),
                        child: FlatButton(
                          onPressed: () {},
                          child: Text(
                            "Pay",
                            style: AppTextStyles.textStyle(color: Colors.white),
                          ),
                        ),
                      )
              ],
            )
          ],
        ),
      ),
    );
  }
}
