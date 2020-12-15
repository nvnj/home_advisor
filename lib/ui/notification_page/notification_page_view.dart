import 'package:flutter/material.dart';
import 'package:home_advisor/app_theme/app_colors.dart';
import 'package:home_advisor/app_theme/text_styles.dart';
import 'package:stacked/stacked.dart';
import 'package:home_advisor/ui/notification_page/notification_page_view_model.dart';
import 'package:home_advisor/ui/widgets/notification_card.dart';

class NotificationPage extends StatelessWidget {
  static const String id = "NotificationPage";

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NotificationPageViewModel>.reactive(
        viewModelBuilder: () => NotificationPageViewModel(),
        builder: (context, model, child) => Scaffold(
              appBar: AppBar(
                toolbarHeight: 66,
                actions: [
                  Container(
                    margin: EdgeInsets.only(right: 5),
                    child: Icon(
                      Icons.search_outlined,
                      color: Colors.white,
                    ),
                  )
                ],
                leadingWidth: 100,
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
                      "Notifications",
                      style: AppTextStyles.textStyle(
                          size: 17, fontType: FontType.regular),
                    )
                  ],
                ),
                flexibleSpace: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                        AppColor.blGradient2,
                        AppColor.blGradient1
                      ])),
                ),
                elevation: 1,
              ),
              body: Container(
                  color: Colors.white,
                  child: ListView.builder(
                    primary: false,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return NotificationCard(
                          date: model.list[index].date,
                          image: model.list[index].image,
                          noti: model.list[index].noti,
                          time: model.list[index].time);
                    },
                    itemCount: model.list.length,
                  )),
            ));
  }
}
