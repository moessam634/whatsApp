import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_app/core/styles/color_app.dart';
import 'package:whatsapp_app/core/styles/string_app.dart';
import 'package:whatsapp_app/core/widgets/app_bar.dart';
import 'package:whatsapp_app/features/home/view/widgets/build_home.dart';

import '../../model/home_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isArabic = true;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: isArabic ? TextDirection.rtl : TextDirection.ltr,
      child: Scaffold(
        backgroundColor: ColorApp.kBlack26Color,
        appBar: customAppBar(
            title: StringApp.chats,
            icon1: CupertinoIcons.camera_circle_fill,
            icon2: CupertinoIcons.plus_circle_fill,
            icon3: Icons.language_rounded,onPressed: () {
              setState(() {
                isArabic=!isArabic;
              });
            },),
        body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            return BuildHome(list[index]);
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.plus_bubble,
                  color: ColorApp.kWhiteColor,
                ),
                label: StringApp.update,
                backgroundColor: ColorApp.kWhiteColor),
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.chat_bubble_2_fill,
                  color: ColorApp.kWhiteColor,
                ),
                label: StringApp.chats,
                backgroundColor: ColorApp.kWhiteColor),
          ],
          backgroundColor: ColorApp.kPrimaryColor,
        ),
      ),
    );
  }
}
