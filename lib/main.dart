import 'package:flutter/material.dart';
import 'package:json_parsing/screen/provider/home_provider.dat.dart';
import 'package:json_parsing/screen/routes/routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => HomeProvider(),
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
