import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:home_advisor/app_theme/app_colors.dart';
import 'package:home_advisor/app_theme/text_styles.dart';
import 'package:home_advisor/ui/cleaning/choose_cleaning_view_model.dart';
import 'package:home_advisor/ui/widgets/cleaning_service_tile.dart';
import 'package:stacked/stacked.dart';

class _ChooseCleaningText {
  static String goback = "Go back";
  static String chooseCategory = "Choose From Cleaning";
}

class ChooseCleaning extends StatelessWidget {
  const ChooseCleaning({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => ChooseCleaningViewModel(),
      onModelReady: (model) {
        model.getDiffrentCategoryOfService();
      },
      builder: (contex, model, child) {
        return Scaffold(
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
                Expanded(
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          _ChooseCleaningText.goback,
                          style: AppTextStyles.textStyle(
                            size: 11,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      bottom: 10.0,
                    ),
                    child: Text(
                      _ChooseCleaningText.chooseCategory,
                      style: AppTextStyles.textStyle(
                        size: 12,
                      ),
                    ),
                  ),
                )
              ],
            ),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    AppColor.blGradient2,
                    AppColor.blGradient1,
                  ],
                ),
              ),
            ),
            elevation: 1,
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: StaggeredGridView.countBuilder(
              crossAxisCount: 4,
              itemCount: model.categories.length,
              itemBuilder: (BuildContext context, int index) => CleaningTile(
                catefgoryName: model.categories.elementAt(index).type,
                url: model.categories.elementAt(index).image,
                onTap: () {},
              ),
              staggeredTileBuilder: (int index) => new StaggeredTile.fit(2),
              mainAxisSpacing: 15.0,
              crossAxisSpacing: 15.0,
            ),
          ),
        );
      },
    );
  }
}
