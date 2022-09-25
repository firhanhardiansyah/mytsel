import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mytsel/app/widgets/splash.dart';

import 'app/routes/app_pages.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return GetMaterialApp(
    //   title: "Application",
    //   initialRoute: Routes.LOGIN,
    //   getPages: AppPages.routes,
    //   debugShowCheckedModeBanner: false,
    // );

    return FutureBuilder(
        future: Future.delayed(Duration(seconds: 3)),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return SplashScreen();
          } else {
            return GetMaterialApp(
              title: "Application",
              initialRoute: Routes.LOGIN,
              getPages: AppPages.routes,
              debugShowCheckedModeBanner: false,
            );
          }
        });
  }
}
