import 'package:flutter/material.dart';
import 'package:home_advisor/app_theme/app_colors.dart';
import 'package:home_advisor/app_theme/text_styles.dart';
import 'package:home_advisor/services/api_services.dart';
import 'package:home_advisor/ui/widgets/sub_category_tile.dart';
import 'package:stacked/stacked.dart';

import 'sub_categ_model.dart';
import 'sub_categ_viewmodel.dart';

class SubCategView extends StatelessWidget {
  static const id = "SubCategView";

  String title;
  int index;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SubCategViewModel>.reactive(
      onModelReady: (model) => model.initState(),
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
                Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Go Back",
                          style: AppTextStyles.textStyle(size: 11),
                        ),
                      )
                    ],
                  ),
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
                    child: model.token != null
                        ? FutureBuilder(
                            future: APIServices.getSubCateg(model.token),
                            builder:
                                (_, AsyncSnapshot<SubCategModel> snapshot) {
                              if (snapshot.connectionState ==
                                      ConnectionState.done &&
                                  snapshot.hasData) {
                                print(snapshot.data.toString());
                                List<SubCateg> categories =
                                    snapshot.data.results;
                                return GridView.count(
                                  childAspectRatio: (10 / 6),
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 20,
                                  crossAxisCount: 2,
                                  children:
                                      List.generate(categories.length, (index) {
                                    return SubCategoryTile(
                                      name: categories[index].name,
                                      address: categories[index].icon,
                                    );
                                  }),
                                );
                              } else {
                                print(
                                    "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
                                return Center(
                                    child: CircularProgressIndicator());
                              }
                            },
                          )
                        : Center(child: CircularProgressIndicator()),
                  ),
                )
              ],
            ),
          )),
      viewModelBuilder: () => SubCategViewModel(),
    );
  }
}
