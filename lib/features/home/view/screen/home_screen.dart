import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp_app/core/styles/color_app.dart';
import 'package:whatsapp_app/core/styles/string_app.dart';
import 'package:whatsapp_app/core/styles/text_styles.dart';
import 'package:whatsapp_app/features/home/view/widgets/build_home.dart';

import '../../model/home_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.kBlack26Color,
      appBar: AppBar(
        backgroundColor: ColorApp.kPrimaryColor,
        title: Text(
          StringApp.chats,
          style: TextStyles.white,
        ),
        actions: [
          Icon(
            CupertinoIcons.camera_circle_fill,
            size: 30.w,
            color: ColorApp.kGreyColor,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              CupertinoIcons.plus_circle_fill,
              size: 30.w,
              color: ColorApp.kGreenColor,
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
         return BuildHome(list[index]);
        },
      ),
    );
  }
}
