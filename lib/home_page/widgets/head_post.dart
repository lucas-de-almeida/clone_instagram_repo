import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/home_page/controller/home_page_controller.dart';
import 'package:instagram_clone/home_page/widgets/avatar.dart';
import 'package:instagram_clone/home_page/widgets/avatar_post.dart';

class HeadPost extends StatelessWidget {
  HomePageController homePageController = Get.find();
  int index;
  HeadPost({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          AvatarPost(index: index),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  homePageController.listPerson![index]!.name +
                      " " +
                      homePageController.listPerson![index]!.lastName,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
                const Text(
                  'Alguma informação extra',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
