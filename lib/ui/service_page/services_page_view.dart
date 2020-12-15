import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:home_advisor/app_theme/app_colors.dart';
import 'package:home_advisor/app_theme/text_styles.dart';
import 'package:home_advisor/services/api_services.dart';
import 'package:home_advisor/ui/survey_page/survey_page.dart';
import 'services_page_view_model.dart';
import 'package:home_advisor/ui/widgets/service_tile.dart';
import 'package:stacked/stacked.dart';

import 'services_page_model.dart';

class ServicesPage extends StatelessWidget {
  final String title;
  final int subCategId;
  final int categId;
  final String name;
  ServicesPage({this.subCategId, this.title, this.categId, this.name});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ServicesPageViewModel>.reactive(
      onModelReady: (model) => model.initState(),
      builder: (context, model, child) => Scaffold(
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
                Text(
                  name,
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
                            future: APIServices.getServices(model.token),
                            // future: APIServices.getServices(model.token),
                            builder:
                                (_, AsyncSnapshot<ServicesPageModel> snapshot) {
                              if (snapshot.connectionState ==
                                      ConnectionState.done &&
                                  snapshot.hasData) {
                                List<Serve> services = snapshot.data.results;
                                return StaggeredGridView.countBuilder(
                                  crossAxisCount: 4,
                                  itemCount: services.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    if (services[index].subCategory.id ==
                                            subCategId &&
                                        services[index]
                                                .subCategory
                                                .category
                                                .id ==
                                            categId) {
                                      return ServicesTile(
                                        categoryName: services[index].name,
                                        url: services[index].icon,
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => SurveyPage(
                                                appBarName:
                                                    services[index].name,
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    } else {
                                      return SizedBox();
                                    }
                                  },
                                  staggeredTileBuilder: (int index) =>
                                      new StaggeredTile.fit(2),
                                  mainAxisSpacing: 15.0,
                                  crossAxisSpacing: 15.0,
                                );
                              } else {
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
      viewModelBuilder: () => ServicesPageViewModel(),
    );
  }
}
