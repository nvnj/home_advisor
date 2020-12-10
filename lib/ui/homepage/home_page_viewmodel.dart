import 'package:flutter/material.dart';
import 'package:home_advisor/ui/chatlist/chatlist.dart';
import 'package:home_advisor/ui/main_category/main_categ_view.dart';
import 'package:home_advisor/ui/orders_page/orders_page_view.dart';
import 'package:stacked/stacked.dart';

class HomePageViewModel extends IndexTrackingViewModel {
  String homeIcon = "lib/images/bottom_nav/home.png";
  String chatIcon = "lib/images/bottom_nav/chat.png";
  String orderIcon = "lib/images/bottom_nav/orders.png";
  String profileIcon = "lib/images/bottom_nav/profile.png";
  Widget getViewForIndex(int index) {
    switch (index) {
      case 0:
        return MainCategView();
      case 1:
        return OrdersPage();
      case 2:
        return ChatList();
      case 3:
        return Center(child: Text("Profile page"));
      default:
        return MainCategView();
    }
  }
}
