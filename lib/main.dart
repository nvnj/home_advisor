import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:home_advisor/app/locator.dart';
import 'package:home_advisor/services/auth.dart';
import 'package:home_advisor/ui/complete_profile/complete_profile_view.dart';
import 'package:home_advisor/ui/homepage/home_page_view.dart';
import 'package:home_advisor/ui/intro_slider/intro_page_view.dart';
import 'package:home_advisor/ui/otp_page/otp.dart';
import 'package:home_advisor/ui/otp_page/phone_auth.dart';
import 'package:home_advisor/ui/otp_page/signin.dart';
import 'package:home_advisor/ui/start_page.dart';
import 'package:home_advisor/ui/sub_category/sub_categ_view.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PhoneAuth(),
      child: MaterialApp(
        //home: AuthService().handleAuth(),
        initialRoute: StartPage.id,
        routes: {
          StartPage.id: (context) => StartPage(),
          IntroPage.id: (context) => IntroPage(),
          SignInPage.id: (context) => SignInPage(),
          CompleteProfile.id: (context) => CompleteProfile(),
          HomePageView.id: (context) => HomePageView(),
          SubCategView.id: (context) => SubCategView(),
          OtpPage.id: (context) => OtpPage(),
        },
      ),
    );
    // return MaterialApp(
    //   // home: AuthService().handleAuth(),
    //   initialRoute: StartPage.id,
    //   routes: {
    //     StartPage.id: (context) => StartPage(),
    //     IntroPage.id: (context) => IntroPage(),
    //     SignInPage.id: (context) => SignInPage(),
    //     CompleteProfile.id: (context) => CompleteProfile(),
    //     HomePageView.id: (context) => HomePageView(),
    //     SubCategView.id: (context) => SubCategView(),
    //     OtpPage.id: (context) => OtpPage(),
    //   },
    // );
  }
}
