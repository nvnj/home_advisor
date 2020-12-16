import 'package:stacked/stacked.dart';

class LocationDateViewModel extends BaseViewModel{
  List<String> time = ['09:00 Am','10:00 Am','11:00 Am','12:00 Pm','02:00 Pm','03:00 Pm','04:00 Pm','05:00 Pm'];
  List<String> selected = [];

  selectedP(index){
    selected.clear();
    selected.add(time[index]);
    notifyListeners();
  }
}