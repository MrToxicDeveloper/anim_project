import 'package:get/get.dart';

class HomeController extends GetxController{

  RxBool male = true.obs;
  RxBool female = false.obs;

  RxInt weight = 40.obs;
  RxInt age = 15.obs;

  RxDouble height = 0.00.obs;
  RxDouble bmi = 0.00.obs;
}