import 'package:flutter/material.dart';
import 'package:home_advisor/app_theme/app_colors.dart';
import 'package:home_advisor/app_theme/text_styles.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'locationdate_view_model.dart';
import 'gridtiles.dart';

class LocationDate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var location;
    return ViewModelBuilder<LocationDateViewModel>.reactive(
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
                  ],
                ),
                flexibleSpace: Container(
                  height: double.maxFinite,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 60,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Location and Date, Time",
                          style: AppTextStyles.textStyle(color: Colors.white,
                              size: 20, fontType: FontType.regular),
                        ),
                      ),
                    ],
                  ),
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
                child: Column(
                  children: [
                    SizedBox(
                      height: 20.0,
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: GestureDetector(
                        onTap: () {
                          //print('tapped');
                        },
                        child: Container(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              location == null
                                  ? Text(
                                      'Choose Location',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 20),
                                    )
                                  : Text(
                                      '$location',
                                      style:
                                          TextStyle(color: Color(0xff14287B)),
                                    ),
                              Icon(
                                Icons.location_on,
                                color: Color(0xff14287B),
                              )
                            ],
                          ),
                          //width: 300.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Container(
                      height: 200.0,
                      child: CalendarCarousel(
                        weekFormat: true,
                        weekdayTextStyle: TextStyle(color: Color(0xff14287B)),
                        weekendTextStyle: TextStyle(color: Color(0xff14287B)),
                        daysHaveCircularBorder: false,
                        selectedDayButtonColor: Color(0xff65BDF7),
                        selectedDayBorderColor: Colors.grey,
                        thisMonthDayBorderColor: Colors.grey,
                        iconColor: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: SizedBox(
                        height: 350.0,
                        child: GridView.builder(
                          itemCount: 8,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              mainAxisSpacing: 20.0,
                              crossAxisSpacing: 20.0,
                            childAspectRatio: 5/2.5,
                          ),

                          itemBuilder: (context, index) => GestureDetector(
                            onTap: (){model.selectedP(index);},
                            child:GridViewItem(model.time[index],model.selected.contains(model.time[index]),true)
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      child: FlatButton(
                        onPressed: () {},
                        child: Ink(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  AppColor.rdGradient2,
                                  AppColor.rdGradient1
                                ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              borderRadius: BorderRadius.circular(5.0)),
                          child: Container(
                            constraints: BoxConstraints(
                                maxWidth: 165.0, minHeight: 50.0),
                            alignment: Alignment.center,
                            child: Text(
                              "CONTINUE",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
        viewModelBuilder: ()=>LocationDateViewModel());
  }
}
