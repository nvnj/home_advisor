import 'package:flutter/material.dart';
import 'package:home_advisor/app_theme/app_colors.dart';
import 'package:home_advisor/app_theme/text_styles.dart';
import 'package:stacked/stacked.dart';
import 'package:home_advisor/ui/vendors_page/vendors_page_view_model.dart';
import 'package:home_advisor/ui/widgets/vendors_card.dart';

class VendorsPage extends StatelessWidget {
  static const String id = "VendorsPage";

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<VendorsPageViewModel>.reactive(
        viewModelBuilder: () => VendorsPageViewModel(),
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
                leadingWidth: 90,
                leading: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
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
                      "Quote",
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
                          colors: [
                        AppColor.blGradient2,
                        AppColor.blGradient1
                      ])),
                ),
                elevation: 1,
              ),
              body: Container(
                color: Colors.white,
                padding: const EdgeInsets.all(10.0),
                child: ListView(
                  children: [
                    Text(
                      "#4569 Floor Cleaning",
                      style: AppTextStyles.textStyle(
                          color: AppColor.blCommon, size: 16),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("September,Fri,5",
                                style: AppTextStyles.textStyle(
                                    color: AppColor.blCommon)),
                            SizedBox(
                              height: 10,
                            ),
                            Text("2:00 pm",
                                style: AppTextStyles.textStyle(
                                    color: AppColor.blCommon)),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Al Sadd,Doha",
                                style: AppTextStyles.textStyle(
                                    color: AppColor.blCommon))
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Vendor 1",
                                style: AppTextStyles.textStyle(
                                    color: AppColor.blCommon)),
                            SizedBox(
                              height: 22,
                            ),
                            Text("1250 QAR",
                                style: AppTextStyles.textStyle(
                                    color: AppColor.blCommon))
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListView.builder(
                      primary: false,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return VendorsCard(
                          name: model.list[index].name,
                          amount: model.list[index].amount,
                          quote: model.list[index].quote,
                        );
                      },
                      itemCount: model.list.length,
                    )
                  ],
                ),
              ),
            ));
  }
}
