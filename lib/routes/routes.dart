import 'package:flutter/material.dart';
import 'package:json_parsing/screen/Lec-8.3/view/post_screen.dart';

import '../Lec-8.2/view/user_screen.dart';
import '../view/HomeScreen.dart';

class MyRoutes{
  static Map<String, Widget Function(BuildContext)> myRoutes = {
    '/' : (context) => const PostScreen(),
    '/user': (context) => const UserScreen(),
    '/Home': (context) => const HomeScreen(),
  };
}
