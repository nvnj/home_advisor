import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:home_advisor/app_theme//screen_util-extension.dart';

class ReceivedMessageWidget extends StatelessWidget {
  final String content;
  final String imageAddress;

  final bool isImage;

  const ReceivedMessageWidget({
    Key key,
    this.content,
    this.isImage,
    this.imageAddress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: false);
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(
            right: 75.0, left: 8.0, top: 8.0, bottom: 8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/1.png"),
            ),
            SizedBox(width: 5.w),
            Container(
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width * 0.6,
              color: Color(0xfff3f3f3),
              child: Stack(
                children: <Widget>[
                  !isImage
                      ? Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Text(
                            content,
                          ),
                        )
                      : Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                child: Image.asset(
                                  imageAddress,
                                  height: 130,
                                  width: 130,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                content,
                              )
                            ],
                          ),
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
