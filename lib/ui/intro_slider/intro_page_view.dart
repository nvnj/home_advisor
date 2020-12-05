import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:home_advisor/ui/complete_profile/complete_profile_view.dart';
import 'package:home_advisor/ui/intro_slider/intro_slider_viewmodel.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:stacked/stacked.dart';

class IntroPage extends StatelessWidget {
  static const id = "2";
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: false);
    return ViewModelBuilder.reactive(
      builder: (context, model, child) => IntroSlider(
        slides: model.slides,
        sizeDot: 13,
        renderSkipBtn: model.renderDoneBtn(),
        renderDoneBtn: FlatButton(
          onPressed: () {
            Navigator.pushNamed(context, CompleteProfile.id);
          },
          child: model.renderDoneBtn(),
        ),
      ),
      onModelReady: (model) => model.onInit(),
      viewModelBuilder: () => IntroSliderViewModel(),
    );
  }
}
