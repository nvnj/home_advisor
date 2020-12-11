import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:home_advisor/app_theme//screen_util-extension.dart';
import 'package:home_advisor/ui/homepage/home_page_view.dart';
import 'package:stacked/stacked.dart';

import '../../app_theme/app_colors.dart';
import '../../app_theme/text_styles.dart';
import 'chatlist_viewmodel.dart';
import 'chatlisttile.dart';

class ChatList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: false);
    return ViewModelBuilder<ChatListModel>.reactive(
      builder: (context, chat, child) => Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.square(140.h),
          child: AppBar(
            leading: SizedBox(),
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
                        Navigator.pushNamed(context, HomePageView.id);
                      },
                      child: Row(
                        children: [
                          Icon(Icons.arrow_back_outlined, color: Colors.white),
                          Text('Go Back', style: AppTextStyles.s1(Colors.white))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text('Chat',
                        style: TextStyle(fontSize: 40.f, color: Colors.white))
                  ],
                ),
              ),
            ),
          ),
        ),
        body: Container(
          child: Container(
            child: ListView.builder(
                itemCount: chat.chatList.length,
                itemBuilder: (context, index) {
                  return ChatListViewItem(
                    index: index,
                    hasUnreadMessage: chat.chatList[index]["hasUnread"],
                    image: AssetImage(chat.chatList[index]["image"]),
                    lastMessage: chat.chatList[index]["lastMsg"],
                    name: chat.chatList[index]["name"],
                    newMessageCount: chat.chatList[index]["unRead"],
                    time: chat.chatList[index]["time"],
                  );
                }),
          ),
        ),
      ),
      viewModelBuilder: () => ChatListModel(),
    );
  }
}
