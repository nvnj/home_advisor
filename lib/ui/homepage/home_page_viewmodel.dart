import 'package:flutter/material.dart';
import 'package:home_advisor/ui/main_category/main_categ_view.dart';
import 'package:stacked/stacked.dart';

class HomePageViewModel extends IndexTrackingViewModel {
  String title = "hai";
  String homeIcon = "lib/images/bottom_nav/home.png";
  String chatIcon = "lib/images/bottom_nav/chat.png";
  String orderIcon = "lib/images/bottom_nav/orders.png";
  String profileIcon = "lib/images/bottom_nav/profile.png";
  Widget getViewForIndex(int index) {
    switch (index) {
      case 0:
        return MainCategView();
      case 1:
        return Center(child: Text("Orders page"));
      case 2:
        return Center(child: Text("Chat page"));
      case 3:
        return Center(child: Text("Profile page"));
      default:
        return MainCategView();
    }
  }
}
