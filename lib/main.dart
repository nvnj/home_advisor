import 'package:flutter/material.dart';
import 'package:home_advisor/ui/complete_profile/complete_profile_view.dart';
import 'package:home_advisor/ui/homepage/home_page_view.dart';
import 'package:home_advisor/ui/intro_slider/intro_page_view.dart';
import 'package:home_advisor/ui/start_page.dart';
import 'package:home_advisor/ui/sub_category/sub_categ_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: StartPage.id,
      routes: {
        StartPage.id: (context) => StartPage(),
        IntroPage.id: (context) => IntroPage(),
        CompleteProfile.id: (context) => CompleteProfile(),
        HomePageView.id: (context) => HomePageView(),
        SubCategView.id: (context) => SubCategView(),
      },
    );
  }
}
