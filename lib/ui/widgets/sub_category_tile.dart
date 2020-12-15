import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_advisor/app_theme/app_colors.dart';
import 'package:home_advisor/app_theme/text_styles.dart';
import 'package:home_advisor/ui/service_page/services_page_view.dart';
import 'package:cached_network_image/cached_network_image.dart';

class SubCategoryTile extends StatelessWidget {
  final String name;
  final String address;
  final int id;
  final int categId;
  SubCategoryTile({this.name, this.address, this.id, this.categId});
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      designSize: Size(750, 1334),
      allowFontScaling: false,
    );
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(80.w),
          ),
        ),
        height: 200.h,
        width: 350.w,
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ServicesPage(
                  name: name,
                  subCategId: id,
                  categId: categId,
                ),
              ),
            );
          },
          child: Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      name,
                      style: AppTextStyles.textStyle(color: AppColor.blCommon),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        width: 100.w,
                        child: Image(
                          fit: BoxFit.fill,
                          image: CachedNetworkImageProvider(
                            address,
                          ),
                        )),
                  ],
                ),
              ],
            ),
            elevation: 1,
          ),
        ));
  }
}
