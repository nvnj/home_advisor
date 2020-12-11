import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:home_advisor/app/locator.dart';
import 'package:home_advisor/ui/complete_profile/complete_profile_view.dart';
import 'package:home_advisor/ui/homepage/home_page_view.dart';
import 'package:home_advisor/ui/intro_slider/intro_page_view.dart';
import 'package:home_advisor/ui/otp_page/signin.dart';
import 'package:home_advisor/ui/start_page.dart';
import 'package:home_advisor/ui/sub_category/sub_categ_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  setupLocator();
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
        SignInPage.id: (context) => SignInPage(),
        CompleteProfile.id: (context) => CompleteProfile(),
        HomePageView.id: (context) => HomePageView(),
        SubCategView.id: (context) => SubCategView(),
      },
    );
  }
}
