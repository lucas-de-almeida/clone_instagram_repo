import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/home_page/controller/home_page_controller.dart';
import 'package:instagram_clone/home_page/widgets/avatar.dart';
import 'package:instagram_clone/home_page/widgets/post.dart';

class HomePage extends GetView<HomePageController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomePageController controller = Get.put(HomePageController());

    return SafeArea(
      child: Scaffold(
          bottomSheet: const BottomAppBar(
            color: Colors.black,
            child: Icon(
              Icons.favorite_outline_rounded,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.black,
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      height: 50,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/instagram.png",
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.add_box_outlined,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.05,
                    ),
                    const Icon(
                      Icons.favorite_outline_rounded,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.05,
                    ),
                    const Icon(
                      Icons.chat,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              const Divider(
                color: Colors.grey,
                height: 1,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.83,
                width: double.infinity,
                color: Colors.black,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.16,
                        width: MediaQuery.of(context).size.width,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Avatar(
                                index: index,
                              );
                            },
                            itemCount: controller.listPerson!.length),
                      ),
                      const Divider(
                        color: Colors.black,
                        height: 5,
                      ),
                      SingleChildScrollView(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.8,
                          child: ListView.builder(
                              itemBuilder: (context, index) {
                                print(index);
                                return Post(
                                  index: index,
                                );
                              },
                              itemCount: controller.listPerson!.length),
                        ),
                      ),
                      const Divider(
                        color: Colors.black,
                        height: 5,
                      ),
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
