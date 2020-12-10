import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:home_advisor/app_theme/app_colors.dart';
import 'package:home_advisor/ui/orders_page/orders_page_viewmodel.dart';
import 'package:home_advisor/ui/widgets/orders_comp_card.dart';
import 'package:home_advisor/ui/widgets/orders_ongoing_card.dart';
import 'package:home_advisor/ui/widgets/orders_req_card.dart';
import 'package:stacked/stacked.dart';

class OrdersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OrdersPageViewModel>.reactive(
      builder: (context, model, child) => DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(
                indicator: BoxDecoration(color: Colors.white),
                labelColor: Colors.blue,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(
                    text: 'Requested',
                  ),
                  Tab(
                    text: "On Going",
                  ),
                  Tab(
                    text: 'Completed',
                  )
                ],
              ),
              actions: [
                Container(
                  margin: EdgeInsets.only(right: 5),
                  child: Icon(
                    Icons.search_outlined,
                    color: AppColor.blCommon,
                  ),
                )
              ],
              elevation: 0,
              backgroundColor: Colors.white,
              leading: Container(
                  margin: EdgeInsets.only(left: 5),
                  child: Image.asset(model.logo)),
            ),
            body: TabBarView(
              children: <Widget>[
                Container(
                  color: Colors.white,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return OrdersCard(
                        time: model.req[index].time,
                        name: model.req[index].name,
                        date: model.req[index].date,
                        location: model.req[index].location,
                        seriel: model.req[index].seriel,
                      );
                    },
                    itemCount: model.req.length,
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return OrdersOnGCard(
                        time: model.onGoing[index].time,
                        name: model.onGoing[index].name,
                        date: model.onGoing[index].date,
                        location: model.onGoing[index].location,
                        seriel: model.onGoing[index].seriel,
                        status: model.onGoing[index].status,
                        paymentStatus: model.onGoing[index].paymentStatus,
                      );
                    },
                    itemCount: model.onGoing.length,
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return OrdersCompCard(
                        time: model.comp[index].time,
                        name: model.comp[index].name,
                        date: model.comp[index].date,
                        location: model.comp[index].location,
                        seriel: model.comp[index].seriel,
                      );
                    },
                    itemCount: model.comp.length,
                  ),
                ),
              ],
            )),
      ),
      viewModelBuilder: () => OrdersPageViewModel(),
    );
  }
}
