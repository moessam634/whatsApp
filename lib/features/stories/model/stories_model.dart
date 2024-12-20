import 'package:whatsapp_app/core/styles/network_images_app.dart';
import 'package:whatsapp_app/core/styles/string_app.dart';

class StoriesModel {
  final String name;
  final String profileImage;
  final String statusImage;

  StoriesModel({
    required this.name,
    required this.profileImage,
    required this.statusImage,
  });
}

List<StoriesModel> statusList = [
  StoriesModel(
      name: StringApp.name,
      profileImage: NetworkImagesApp.firstImage,
      statusImage: NetworkImagesApp.firstImage),StoriesModel(
      name: StringApp.name,
      profileImage: NetworkImagesApp.firstImage,
      statusImage: NetworkImagesApp.firstImage),StoriesModel(
      name: StringApp.name,
      profileImage: NetworkImagesApp.firstImage,
      statusImage: NetworkImagesApp.firstImage)
];
