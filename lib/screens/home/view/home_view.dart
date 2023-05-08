import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../controller/home_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  HomeController getx = Get.put(HomeController());

  AnimationController? animationController;
  Animation? height;
  Animation? male;
  Animation? female;

  @override
  void initState() {
    super.initState();

    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));

    height = Tween<Offset>(begin: Offset(350, 00), end: Offset(00, 00))
        .animate(animationController!);

    male = Tween<Offset>(begin: Offset(-150, 00), end: Offset(00, 00))
        .animate(animationController!);

    female = Tween<Offset>(begin: Offset(150, 00), end: Offset(00, 00))
        .animate(animationController!);

    animationController!.forward();

    animationController!.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff151e49),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text("BMI CALCULATOR"),
          actions: [
            Icon(Icons.refresh),
          ],
        ),
        body: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 20.h,
                  width: 45.w,
                  decoration: BoxDecoration(
                      color: Color(0xff283059),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Obx(
                        () => Icon(
                          Icons.male,
                          color:
                              getx.male == true ? Colors.pink : Colors.white60,
                          // size: 50,
                        ),
                      ),
                      Text(
                        "MALE",
                        style:
                            TextStyle(fontSize: 25.sp, color: Colors.white54),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
