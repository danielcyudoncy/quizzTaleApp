import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizztale_app/homepage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'appName',
      theme: ThemeData(),
      home: const Homepage(),
    );
  }
}
