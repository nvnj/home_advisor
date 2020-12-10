import 'package:flutter/material.dart';
import 'package:home_advisor/app_theme/app_colors.dart';
import 'package:home_advisor/app_theme/text_styles.dart';
import 'package:home_advisor/ui/widgets/main_category_tile.dart';
import 'package:stacked/stacked.dart';

import 'main_categ_viewmodel.dart';

class MainCategView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MainCategViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
          appBar: AppBar(
            actions: [
              Container(
                margin: EdgeInsets.only(right: 5),
                child: Icon(
                  Icons.search_outlined,
                  color: AppColor.blCommon,
                ),
              )
            ],
            elevation: 1,
            backgroundColor: Colors.white,
            leading: Container(
                margin: EdgeInsets.only(left: 5),
                child: Image.asset(model.logo)),
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
                      childAspectRatio: (10 / 6),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 20,
                      // shrinkWrap: true,
                      crossAxisCount: 2,
                      children: List.generate(model.categ.length, (index) {
                        return MainCategoryTile(
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
      viewModelBuilder: () => MainCategViewModel(),
    );
  }
}
