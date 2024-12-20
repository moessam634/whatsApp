import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp_app/core/styles/text_styles.dart';
import 'package:whatsapp_app/features/stories/model/stories_model.dart';
import '../../../../core/styles/color_app.dart';
class BuildStories extends StatelessWidget {
  const BuildStories({super.key, required this.storiesModel});
final StoriesModel storiesModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(3.w),
      child: Container(
        width: 90.w,
        height: 160.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            color: ColorApp.kGreyColor,
            image: DecorationImage(
                image: NetworkImage(storiesModel.statusImage))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              alignment: Alignment.topLeft,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(storiesModel.profileImage),
                  radius: 24.sp,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
                    child: Icon(
                      CupertinoIcons.plus_circle_fill,
                      size: 20.w,
                      color: ColorApp.kGreenColor,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding:  EdgeInsets.all(3.sp),
              child: Text(
                storiesModel.name,
                style: TextStyles.white,
                textAlign: TextAlign.end,
              ),
            )
          ],
        ),
      ),
    );
  }
}
