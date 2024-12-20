import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../styles/color_app.dart';
import '../styles/text_styles.dart';

AppBar customAppBar(
    {required String title,
    required IconData icon1,
    required IconData icon2,
    required IconData icon3,
     void Function()? onPressed}) {
  return AppBar(
    backgroundColor: ColorApp.kPrimaryColor,
    title: Text(
      title,
      style: TextStyles.white,
    ),
    actions: [
      Icon(
        icon1,
        size: 28.w,
        color: ColorApp.kGreyColor,
      ),
      SizedBox(
        width: 8.w,
      ),
      Icon(
        icon2,
        size: 28.w,
        color: ColorApp.kGreenColor,
      ),
      IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon3,
            color: ColorApp.kGreyColor,
            size: 28.w,
          ))
    ],
  );
}
