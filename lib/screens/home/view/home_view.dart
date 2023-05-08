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
  HomeController controller = Get.put(HomeController());

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
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.refresh),
            ),
            SizedBox(
              width: 5.w,
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    controller.male.value = true;
                    controller.female.value = false;
                  },
                  child: Container(
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
                            color: controller.male == true
                                ? Colors.pink
                                : Colors.white60,
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
                ),
                InkWell(
                  onTap: () {
                    controller.male.value = false;
                    controller.female.value = true;
                  },
                  child: Container(
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
                            Icons.female,
                            color: controller.female == true
                                ? Colors.pink
                                : Colors.white60,
                            // size: 50,
                          ),
                        ),
                        Text(
                          "FEMALE",
                          style:
                              TextStyle(fontSize: 25.sp, color: Colors.white54),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 2.h),
            Container(
              height: 30.h,
              width: 94.w,
              decoration: BoxDecoration(
                  color: Color(0xff283059),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HEIGHT",
                    style: TextStyle(fontSize: 17.sp, color: Colors.white54),
                  ),
                  Obx(
                    () => Text(
                      "${controller.height.toInt()}",
                      style: TextStyle(fontSize: 17.sp, color: Colors.white54),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Slider(
                    value: controller.height.value,
                    min: 0,
                    max: 270,
                    activeColor: Colors.pink,
                    inactiveColor: Colors.white54,
                    onChanged: (value) {
                      setState(
                        () {
                          controller.height.value = value;
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 2.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                      Text(
                        "WEIGHT",
                        style:
                            TextStyle(fontSize: 17.sp, color: Colors.white54),
                      ),
                      Obx(
                        () => Text(
                          "${controller.weight}",
                          style:
                              TextStyle(fontSize: 17.sp, color: Colors.white54),
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 6.h,
                            width: 6.h,
                            decoration: BoxDecoration(
                              color: Colors.black54,
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              onPressed: () {
                                controller.weight.value++;
                              },
                              icon: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            height: 6.h,
                            width: 6.h,
                            decoration: BoxDecoration(
                              color: Colors.black54,
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              onPressed: () {
                                controller.weight.value--;
                              },
                              icon: Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 20.h,
                  width: 45.w,
                  decoration: BoxDecoration(
                      color: Color(0xff283059),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Age",
                        style:
                            TextStyle(fontSize: 17.sp, color: Colors.white54),
                      ),
                      Obx(
                        () => Text(
                          "${controller.age}",
                          style:
                              TextStyle(fontSize: 17.sp, color: Colors.white54),
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 6.h,
                            width: 6.h,
                            decoration: BoxDecoration(
                              color: Colors.black54,
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              onPressed: () {
                                controller.age.value++;
                              },
                              icon: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            height: 6.h,
                            width: 6.h,
                            decoration: BoxDecoration(
                              color: Colors.black54,
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              onPressed: () {
                                controller.age.value--;
                              },
                              icon: Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 2.h),
            InkWell(
              onTap: () {
                double mWeight = 0.0, wSquare = 0.0;
                mWeight = controller.height.value / 100;
                wSquare = mWeight * mWeight;
                controller.bmi.value = controller.weight.value / wSquare;

                Get.defaultDialog(
                  title: "Your BMI Result : ${controller.bmi}",
                  titlePadding: EdgeInsets.all(50),
                  content: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(onPressed: () => Get.back(), child: Text("recalculate")),
                      TextButton(onPressed: () => Get.back(), child: Text("ok")),
                    ],
                  ),
                );
              },
              child: Container(
                height: 10.h,
                width: double.infinity,
                color: Colors.red,
                alignment: Alignment.center,
                child: Text(
                  "Calculate BMI",
                  style: TextStyle(color: Colors.white, fontSize: 15.sp),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
