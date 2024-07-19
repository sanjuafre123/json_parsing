import 'package:flutter/material.dart';

import '../view/HomeScreen.dart';

class MyRoutes{
  static Map<String, Widget Function(BuildContext)> myRoutes = {
    '/' : (context) => const HomeScreen(),
  };
}
