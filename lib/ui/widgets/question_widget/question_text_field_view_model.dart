import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class QueestionTextFieldViewModel extends BaseViewModel {
  TextEditingController controller = new TextEditingController();

  TextEditingController get getController => controller;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
