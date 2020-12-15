import 'package:flutter/material.dart';
import 'package:home_advisor/app_theme/app_colors.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'home_page_viewmodel.dart';

class HomePageView extends StatelessWidget {
  static const id = "HomePage";
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: false);
    return ViewModelBuilder<HomePageViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: model.getViewForIndex(model.currentIndex),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              gradient: LinearGradient(
                colors: [AppColor.blGradient1, AppColor.blGradient2],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: BottomNavigationBar(
              currentIndex: model.currentIndex,
              onTap: model.setIndex,
              backgroundColor: Colors.transparent,
              type: BottomNavigationBarType.fixed,
              elevation: 0,
              unselectedItemColor: Colors.white,
              selectedItemColor: Colors.blue,
              selectedIconTheme: IconThemeData(color: Colors.white),
              items: [
                BottomNavigationBarItem(
                    icon: Image.asset(model.homeIcon), label: "Home"),
                BottomNavigationBarItem(
                    icon: Image.asset(model.orderIcon), label: "Orders"),
                BottomNavigationBarItem(
                    icon: Image.asset(model.chatIcon), label: "Chat"),
                BottomNavigationBarItem(
                    icon: Image.asset(model.profileIcon), label: "Profile"),
              ],
            ),
          ),
        ),
      ),
      viewModelBuilder: () => HomePageViewModel(),
    );
  }
}
