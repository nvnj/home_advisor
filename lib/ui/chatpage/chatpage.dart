import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:home_advisor/app/locator.dart';
import 'package:home_advisor/app_theme//screen_util-extension.dart';
import 'package:home_advisor/ui/chatlist/chatlist.dart';
import 'package:stacked/stacked.dart';

import '../../app_theme/app_colors.dart';
import '../../app_theme/text_styles.dart';
import '../chatlist/chatlist_viewmodel.dart';
import 'chatpagemodel.dart';

class ChatPageView extends StatelessWidget {
  final int index;

  ChatPageView({
    Key key,
    this.index,
  }) : super(key: key);

  TextEditingController _text = new TextEditingController();
  ScrollController _scrollController = ScrollController();
  var chat = locator<ChatListModel>();

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: false);
    return ViewModelBuilder<ChatPageModel>.reactive(
        builder: (context, model, child) => Scaffold(
              appBar: PreferredSize(
                preferredSize: Size.fromHeight(140.h),
                child: AppBar(
                  leading: Container(),
                  flexibleSpace: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                      colors: [AppColor.blGradient2, AppColor.blGradient1],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                    )),
                    child: Padding(
                      padding: EdgeInsets.only(left: 25.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 40.h,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ChatList()));
                            },
                            child: Row(
                              children: [
                                Icon(Icons.arrow_back_outlined,
                                    color: Colors.white),
                                Text('Go Back',
                                    style: AppTextStyles.s1(Colors.white))
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Row(
                            children: [
                              Container(
                                child: ClipRRect(
                                  child: Container(
                                      child: SizedBox(
                                        child: Image.asset(
                                          "assets/profile.webp",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      color: Colors.orange),
                                  borderRadius: new BorderRadius.circular(50),
                                ),
                                height: MediaQuery.of(context).size.width * 0.1,
                                width: MediaQuery.of(context).size.width * 0.1,
                                //padding: const EdgeInsets.all(0.0),
                              ),
                              SizedBox(width: 10.w),
                              Text(
                                'Franzen',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 26.f),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              body: SafeArea(
                child: Container(
                  child: Stack(
                    fit: StackFit.loose,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.start,
                        // mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Divider(
                            height: 0,
                            color: Colors.black54,
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/edit.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: SingleChildScrollView(
                                  controller: _scrollController,
                                  // reverse: true,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: model.childList,
                                  )),
                            ),
                          ),
                          Divider(height: 0, color: Colors.black26),
                          Container(
                            height: 50,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: TextField(
                                maxLines: 20,
                                controller: _text,
                                decoration: InputDecoration(
                                  suffixIcon: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      IconButton(
                                        icon: Icon(Icons.send),
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                  border: InputBorder.none,
                                  hintText: "Type a message",
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
        viewModelBuilder: () => ChatPageModel());
  }
}
