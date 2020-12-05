import 'package:flutter/material.dart';
import 'package:home_advisor/app_theme/app_colors.dart';
import 'package:home_advisor/app_theme/text_styles.dart';
import 'package:home_advisor/ui/widgets/sub_category_tile.dart';
import 'package:stacked/stacked.dart';

import 'sub_categ_viewmodel.dart';

class SubCategView extends StatelessWidget {
  static const id = "5";
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SubCategViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
          appBar: AppBar(
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
                Row(
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Go Back",
                        style: AppTextStyles.textStyle(size: 11),
                      ),
                    )
                  ],
                ),
                Text(
                  "Maintenance",
                  style: AppTextStyles.textStyle(
                      size: 18, fontType: FontType.regular),
                )
              ],
            ),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [AppColor.blGradient2, AppColor.blGradient1])),
            ),
            elevation: 1,
          ),
          body: Container(
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Choose your Category",
                      style: AppTextStyles.textStyle(
                          color: AppColor.blCommon,
                          fontType: FontType.bold,
                          size: 15),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: GridView.count(
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 20,
                      // shrinkWrap: true,
                      crossAxisCount: 2,
                      children: List.generate(model.categ.length, (index) {
                        return SubCategoryTile(
                          name: model.categ[index][0],
                          address: model.categ[index][1],
                        );
                      }),
                    ),
                  ),
                )
              ],
            ),
          )),
      viewModelBuilder: () => SubCategViewModel(),
    );
  }
}
