import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/post_controller.dart';

class Posts extends StatefulWidget {
  const Posts({super.key});

  @override
  State<Posts> createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  PostController PostController_con = Get.put(PostController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Posts Page'),
        ),
        body: Obx(() => ListView.builder(
            itemCount: PostController_con.postsList.length,
            itemBuilder: ((context, index) {
              return Row(
                children: [
                  Text("${PostController_con.postsList[index].title}"),
                ],
              );
            }))));
  }
}
