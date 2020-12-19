import 'package:flutter/material.dart';
import 'package:home_advisor/app_theme/app_colors.dart';
import 'package:home_advisor/app_theme/text_styles.dart';
import 'package:home_advisor/ui/survey_page/survey_page_view_model.dart';
import 'package:home_advisor/ui/widgets/question_widget/question_text_field_widget.dart';
import 'package:home_advisor/ui/widgets/question_widget/question_widget.dart';
import 'package:stacked/stacked.dart';
import 'package:home_advisor/ui/locationdate/locationdate_view.dart';

class SurveyPage extends StatelessWidget {
  final String appBarName;
  SurveyPage({this.appBarName});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SurveyPageViewModel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(
            toolbarHeight: 66,
            actions: [
              Container(
                margin: EdgeInsets.only(right: 5),
                child: Icon(
                  Icons.search_outlined,
                  color: Colors.white,
                ),
              )
            ],
            leadingWidth: double.infinity,
            leading: Column(
              children: [
                Container(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                        Text(
                          "Go Back",
                          style: AppTextStyles.textStyle(size: 11),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            flexibleSpace: Container(
              height: double.maxFinite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.056,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      appBarName,
                      style: AppTextStyles.textStyle(
                          color: Colors.white,
                          size: 20,
                          fontType: FontType.regular),
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [AppColor.blGradient2, AppColor.blGradient1])),
            ),
            elevation: 1,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                QuestionWidget(
                  question: "Question1",
                  getChoice: (choice, selectedChoice) {
                    print(selectedChoice);
                  },
                ),
                QuestionWidget(
                  question: "Question2",
                  getChoice: (choice, selectedChoice) {
                    print(selectedChoice);
                  },
                ),
                QuestionTextFieldWidget(
                  getInputText: (value) {
                    print(value);
                  },
                ),
                QuestionTextFieldWidget(
                  getInputText: (value) {
                    print(value);
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    margin: EdgeInsets.only(left: 20, right: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: LinearGradient(
                        colors: [AppColor.rdGradient2, AppColor.rdGradient1],
                      ),
                    ),
                    height: 50,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.pushNamed(context, LocationDatePage.id);
                      },
                      child: Text(
                        "Submit",
                        style: TextStyle(fontSize: 20),
                      ),
                      textColor: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      viewModelBuilder: () => SurveyPageViewModel(),
    );
  }
}
