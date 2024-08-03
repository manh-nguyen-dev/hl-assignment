import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'config/app_pages.dart';
import 'config/app_routes.dart';
import 'config/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Joke App',
      theme: AppTheme.lightTheme,
      getPages: AppPages.pages,
      initialRoute: Routes.joke,
    );
  }
}