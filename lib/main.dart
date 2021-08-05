import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:learning_animation/common/app_route.dart';
import 'package:learning_animation/di/binding.dart';
import 'package:learning_animation/presentation/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppRoute.home,
      getPages: [
        GetPage(
          name: AppRoute.home,
          page: () => HomeScreen(),
          transition: Transition.zoom,
          binding: HomeBinding(),
        ),
      ],
    );
  }
}
