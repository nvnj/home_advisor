import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:home_advisor/app_theme/app_colors.dart';
import 'package:home_advisor/app_theme/text_styles.dart';

class CleaningTile extends StatelessWidget {
  final String url;
  final String catefgoryName;
  final Function onTap;
  const CleaningTile({
    this.catefgoryName,
    this.url,
    key,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.10),
              offset: Offset(0, 4),
              blurRadius: 10,
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: CachedNetworkImageProvider(
                "${url}",
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ),
              child: Text(
                "${catefgoryName}",
                style: AppTextStyles.textStyle(
                  fontType: FontType.bold,
                  color: AppColor.blCommon,
                  size: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
