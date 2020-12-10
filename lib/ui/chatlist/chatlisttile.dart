import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:home_advisor/app_theme//screen_util-extension.dart';
import 'package:home_advisor/ui/chatpage/chatpage.dart';

class ChatListViewItem extends StatelessWidget {
  final int index;
  final AssetImage image;
  final String name;
  final String lastMessage;
  final String time;
  final bool hasUnreadMessage;
  final int newMessageCount;
  const ChatListViewItem({
    Key key,
    this.index,
    this.image,
    this.name,
    this.lastMessage,
    this.time,
    this.hasUnreadMessage,
    this.newMessageCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: false);
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              flex: 10,
              child: ListTile(
                title: Text(
                  name,
                  style: TextStyle(fontSize: 30.f, fontWeight: FontWeight.bold),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(right: 150.w),
                  child: Text(
                    lastMessage,
                    maxLines: 1,
                    overflow: TextOverflow.clip,
                    style: TextStyle(fontSize: 20.f),
                  ),
                ),
                leading: CircleAvatar(
                  backgroundImage: image,
                ),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      time,
                      style: TextStyle(fontSize: 16.f),
                    ),
                    hasUnreadMessage
                        ? Container(
                            margin: const EdgeInsets.only(top: 5.0),
                            height: 18,
                            width: 18,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(25.0),
                                )),
                            child: Center(
                                child: Text(
                              newMessageCount.toString(),
                              style:
                                  TextStyle(fontSize: 11, color: Colors.white),
                            )),
                          )
                        : SizedBox()
                  ],
                ),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChatPageView(index: index),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        Divider(
          endIndent: 12.0,
          indent: 12.0,
          height: 0,
        ),
      ],
    );
  }
}
