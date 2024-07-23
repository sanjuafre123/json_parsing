import 'package:flutter/material.dart';
import 'package:json_parsing/screen/provider/home_provider.dat.dart';
import 'package:json_parsing/screen/Lec-8.3/provider/post_provider.dart';
import 'package:json_parsing/screen/routes/routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => UserProvider(),
        ),
         ChangeNotifierProvider(
          create: (context) => PostProvider(),
        ),
      ],
      builder: (context, child) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: MyRoutes.myRoutes,
    );
  }
}
