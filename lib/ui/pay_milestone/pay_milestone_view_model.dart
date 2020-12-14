import 'package:home_advisor/ui/pay_milestone/pay_milestone_model.dart';
import 'package:stacked/stacked.dart';

class PayMileStoneViewModel extends BaseViewModel {
  List<MileStoneModel> list = [
    MileStoneModel(
        name: "Advance Pay (10 %)",
        date: "01-10-2020",
        status: "Paid",
        price: "125 QAR"),
    MileStoneModel(
        name: "MileStone 1 (20 %)",
        date: "01-10-2020",
        status: "Paid",
        price: "125 QAR"),
    MileStoneModel(
        name: "MileStone 2 (30 %)",
        date: "01-10-2020",
        status: "",
        price: "125 QAR"),
    MileStoneModel(
        name: "MileStone 3 (40 %)",
        date: "01-10-2020",
        status: "",
        price: "125 QAR")
  ];
}
