import 'package:flutter/material.dart';
import 'package:home_advisor/app_theme/app_colors.dart';
import 'package:home_advisor/app_theme/text_styles.dart';

class VendorsCard extends StatelessWidget {
  final String name;
  final String amount;
  final String quote;
  VendorsCard({this.name, this.amount, this.quote});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration:
            BoxDecoration(border: Border.all(width: 0.2, color: Colors.grey)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.account_circle,
                      color: AppColor.blCommon,
                      size: 35,
                    ),
                    Text(
                      name,
                      style: AppTextStyles.textStyle(color: AppColor.blCommon),
                    ),
                  ],
                ),
                Text(
                  amount,
                  style: AppTextStyles.textStyle(color: AppColor.blCommon),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(quote),
            SizedBox(
              height: 15,
            ),
            Divider(
              thickness: 0.6,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "View Quote",
                    style: AppTextStyles.textStyle(
                        color: AppColor.blCommon, fontType: FontType.bold),
                  ),
                  Text("confirm",
                      style: AppTextStyles.textStyle(
                          color: AppColor.blCommon, fontType: FontType.bold)),
                  Text("Reject",
                      style: AppTextStyles.textStyle(
                          color: AppColor.blCommon, fontType: FontType.bold))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
