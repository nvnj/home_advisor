import 'package:flutter/material.dart';
import 'package:home_advisor/app_theme/app_colors.dart';
import 'package:home_advisor/app_theme/text_styles.dart';
import 'package:home_advisor/ui/widgets/question_widget/question_widget_view_model.dart';
import 'package:stacked/stacked.dart';

class QuestionWidget extends StatelessWidget {
  final Function getChoice;
  final String question;
  const QuestionWidget({
    this.question,
    @required this.getChoice,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<QuestionWidgetViewModel>.reactive(
      builder: (context, model, child) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.10),
                  offset: Offset(0, 4),
                  blurRadius: 10,
                )
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.query_builder),
                      SizedBox(
                        width: 20.0,
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${question}",
                            style: AppTextStyles.textStyle(
                              fontType: FontType.bold,
                              color: AppColor.blCommon,
                              size: 18,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Radio(
                                    value: Choices.Choice1,
                                    groupValue: model.getChoice,
                                    onChanged: (Choices choice) {
                                      model.setChoice = choice;
                                      getChoice(choice, "choice1");
                                    },
                                  ),
                                  Text(
                                    "Choice1",
                                    style: AppTextStyles.textStyle(
                                      fontType: FontType.regular,
                                      color: AppColor.blCommon,
                                      size: 14,
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Radio(
                                    value: Choices.Choice2,
                                    groupValue: model.getChoice,
                                    onChanged: (Choices choice) {
                                      model.setChoice = choice;
                                      getChoice(choice, "choice2");
                                    },
                                  ),
                                  Text(
                                    "Choice2",
                                    style: AppTextStyles.textStyle(
                                      fontType: FontType.regular,
                                      color: AppColor.blCommon,
                                      size: 14,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
      viewModelBuilder: () => QuestionWidgetViewModel(),
    );
  }
}
