import 'package:flutter/material.dart';
import 'package:home_advisor/app_theme/app_colors.dart';
import 'package:home_advisor/app_theme/text_styles.dart';
import 'package:home_advisor/ui/widgets/question_widget/question_text_field_view_model.dart';
import 'package:stacked/stacked.dart';

class QuestionTextFieldWidget extends StatelessWidget {
  final Function getInputText;
  const QuestionTextFieldWidget({
    this.getInputText,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<QueestionTextFieldViewModel>.reactive(
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
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 20.0,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.query_builder),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        "Question1",
                        style: AppTextStyles.textStyle(
                          fontType: FontType.bold,
                          color: AppColor.blCommon,
                          size: 18,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 40.0,
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: model.controller,
                          onChanged: (value) {
                            getInputText(value);
                          },
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
      viewModelBuilder: () => QueestionTextFieldViewModel(),
    );
  }
}
