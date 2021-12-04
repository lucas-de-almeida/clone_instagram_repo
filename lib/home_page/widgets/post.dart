// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/home_page/controller/home_page_controller.dart';
import 'package:instagram_clone/home_page/widgets/avatar.dart';
import 'package:instagram_clone/home_page/widgets/bottom_post.dart';
import 'package:instagram_clone/home_page/widgets/comments.dart';
import 'package:instagram_clone/home_page/widgets/head_post.dart';

class Post extends StatelessWidget {
  HomePageController homePageController = Get.find();
  int index;
  Post({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: MediaQuery.of(context).size.height * 0.85,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HeadPost(
                index: index,
              ),
              Icon(
                Icons.auto_awesome_motion,
                color: Colors.white,
              ),
            ],
          ),
          Divider(
            color: Colors.white,
          ),
          Container(
            child: Image.network(
              homePageController.listPost[index],
              fit: BoxFit.cover,
            ),
            height: MediaQuery.of(context).size.height * 0.55,
            width: MediaQuery.of(context).size.width,
          ),
          BottomPost(),
          Comments()
        ],
      ),
    );
  }
}
