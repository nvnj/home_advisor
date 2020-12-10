import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:home_advisor/app/locator.dart';
import 'package:home_advisor/app_theme//screen_util-extension.dart';

import '../chatlist/chatlist_viewmodel.dart';

class SendedMessageWidget extends StatelessWidget {
  final int id;
  final String content;
  final String imageAddress;
  final String time;
  final bool isImage;
  const SendedMessageWidget({
    Key key,
    this.id,
    this.content,
    this.time,
    this.imageAddress,
    this.isImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var chat = locator<ChatListModel>();
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: false);
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(
            right: 8.0, left: 50.0, top: 4.0, bottom: 4.0),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/profile.webp'),
            ),
            Container(
              padding: EdgeInsets.all(15),
              width: MediaQuery.of(context).size.width * 0.7,
              color: Color(0xfff3f3f3),
              // margin: const EdgeInsets.only(left: 10.0),
              child: Stack(children: <Widget>[
                !isImage
                    ? SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Text(content, overflow: TextOverflow.visible),
                      )
                    : Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              child: Image.asset(
                                imageAddress,
                                height: 130.h,
                                width: 130.w,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Container(
                              width: 50.w,
                              child: Text(
                                content,
                              ),
                            )
                          ],
                        ),
                      ),
                // Positioned(
                //   bottom: 1,
                //   left: 10,
                //   child: Text(
                //     time,
                //     style: TextStyle(
                //         fontSize: 10, color: Colors.black.withOpacity(0.6)),
                //   ),
                // )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
