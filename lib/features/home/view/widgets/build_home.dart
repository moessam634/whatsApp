import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp_app/core/styles/text_styles.dart';
import 'package:whatsapp_app/features/home/model/home_model.dart';

class BuildHome extends StatelessWidget {
  const BuildHome(this.homeModel,{super.key, });


final HomeModel homeModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        homeModel.title,
        style: TextStyles.white20,
      ),
      subtitle: Text(
        homeModel.subTitle,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyles.grey14,
      ),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(
          homeModel.image,
        ),
        radius: 35.h,
      ),
      trailing: Text(
        homeModel.time,
        style: TextStyles.grey14,
      ),
    );
  }
}
