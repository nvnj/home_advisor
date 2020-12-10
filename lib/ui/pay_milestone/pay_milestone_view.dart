import 'package:flutter/material.dart';
import 'package:home_advisor/app_theme/app_colors.dart';
import 'package:home_advisor/app_theme/text_styles.dart';

class PayMilestonePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            margin: EdgeInsets.only(right: 5),
            child: Icon(
              Icons.search_outlined,
              color: Colors.white,
            ),
          )
        ],
        leadingWidth: double.infinity,
        leading: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    Text(
                      "Go Back",
                      style: AppTextStyles.textStyle(size: 11),
                    )
                  ],
                ),
              ),
            ),
            Text(
              "View Pay Milestones",
              style:
                  AppTextStyles.textStyle(size: 18, fontType: FontType.regular),
            )
          ],
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [AppColor.blGradient2, AppColor.blGradient1])),
        ),
        elevation: 1,
      ),
    );
  }
}
