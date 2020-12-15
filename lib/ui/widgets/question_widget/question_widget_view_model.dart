import 'package:stacked/stacked.dart';


enum Choices { Choice1, Choice2 }
class QuestionWidgetViewModel extends BaseViewModel{
  Choices _choice = Choices.Choice1;
  Choices get getChoice => _choice;

  set setChoice(Choices choice) {
    _choice = choice;
    notifyListeners();
  }
}