import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp_app/core/styles/color_app.dart';
import 'package:whatsapp_app/core/styles/string_app.dart';
import 'package:whatsapp_app/features/home/model/home_model.dart';
import 'package:whatsapp_app/features/home/view/widgets/build_home.dart';
import 'package:whatsapp_app/features/stories/model/stories_model.dart';
import 'package:whatsapp_app/features/stories/view/widgets/build_stories.dart';
import '../../../../core/styles/text_styles.dart';
import '../../../../core/widgets/app_bar.dart';

class StoriesScreen extends StatelessWidget {
  const StoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
          title: StringApp.update,
          icon1: CupertinoIcons.search_circle_fill,
          icon2: CupertinoIcons.camera_circle_fill,
          icon3: Icons.more_vert),
      backgroundColor: ColorApp.kPrimaryColor,
      body: Padding(
        padding: EdgeInsets.all(8.sp),
        child: ListView(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                StringApp.status,
                style: TextStyles.white20,
              ),
              SizedBox(
                width: double.infinity,
                height: 170,
                child: ListView.builder(
                  itemCount: statusList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return BuildStories(
                      storiesModel: statusList[index],
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    StringApp.channels,
                    style: TextStyles.white20,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: ColorApp.kPrimaryColor,
                        foregroundColor: Colors.white),
                    onPressed: () {},
                    child: Text(
                      StringApp.explore,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return BuildHome(list[index]);
                }),
          ),
        ]),
      ),
    );
  }
}
