import 'package:flutter/material.dart';
import 'package:home_advisor/app_theme/screen_util-extension.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:stacked/stacked.dart';

class IntroSliderViewModel extends BaseViewModel {
  List<Slide> slides = new List();

  void onInit() {
    slides.add(
      new Slide(
        backgroundColor: Colors.white,
        widgetTitle: Container(
          height: 150.h,
          child: Image.asset("lib/images/logo/logo.png"),
        ),
        styleTitle: TextStyle(
            color: Color(0xff3da4ab),
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'RobotoMono'),
        description:
            "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.",
        styleDescription: TextStyle(
            color: Color(0xfffe9c8f),
            fontSize: 20.0,
            fontStyle: FontStyle.italic,
            fontFamily: 'Raleway'),
        pathImage: "lib/images/logo/g1.png",
      ),
    );
    slides.add(
      new Slide(
        backgroundColor: Colors.white,
        widgetTitle: Container(
          height: 150.h,
          child: Image.asset("lib/images/logo/logo.png"),
        ),
        styleTitle: TextStyle(
            color: Color(0xff3da4ab),
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'RobotoMono'),
        description:
            "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.",
        styleDescription: TextStyle(
            color: Color(0xfffe9c8f),
            fontSize: 20.0,
            fontStyle: FontStyle.italic,
            fontFamily: 'Raleway'),
        pathImage: "lib/images/logo/g3.png",
      ),
    );
    slides.add(
      new Slide(
        backgroundColor: Colors.white,
        widgetTitle: Container(
          height: 150.h,
          child: Image.asset("lib/images/logo/logo.png"),
        ),
        styleTitle: TextStyle(
            color: Color(0xff3da4ab),
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'RobotoMono'),
        description:
            "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.",
        styleDescription: TextStyle(
            color: Color(0xfffe9c8f),
            fontSize: 20.0,
            fontStyle: FontStyle.italic,
            fontFamily: 'Raleway'),
        pathImage: "lib/images/logo/g2.png",
      ),
    );
  }

  void onDonePress() {
    print("next");
  }

  Widget renderNextBtn() {
    return Icon(
      Icons.navigate_next,
      color: Color(0xffD02090),
      size: 35.0,
    );
  }

  Widget renderDoneBtn() {
    return Text(
      "Skip",
      style: TextStyle(fontSize: 30.f),
    );
  }

  Widget renderSkipBtn() {
    return Text(
      "Skip",
      style: TextStyle(fontSize: 30.f),
    );
  }
}
