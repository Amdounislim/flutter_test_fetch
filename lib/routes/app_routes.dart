import 'package:fetchapiitest/views/home.dart';
import 'package:fetchapiitest/views/posts.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String home = '/';
  static String posts = '/posts';

  static List<GetPage> pages = [
    GetPage(name: home, page: () => Home()),
    GetPage(name: posts, page: () => Posts()),
  ];
}
