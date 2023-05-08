import 'package:anim_project/screens/home/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: '/', page: () => HomeScreen(),),
      ],
    ),
  );
}
