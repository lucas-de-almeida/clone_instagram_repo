import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/home_page/controller/home_page_controller.dart';

class AvatarPost extends StatelessWidget {
  HomePageController homeController = Get.find();
  int index;
  bool post;
  AvatarPost({Key? key, required this.index, this.post = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(3),
      height: 35,
      width: 35,
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Colors.purple),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Padding(
        padding: const EdgeInsets.all(0.5),
        child: CircleAvatar(
          radius: 30,
          backgroundImage:
              NetworkImage(homeController.listPerson![index]!.imagem),
        ),
      ),
    );
  }
}
