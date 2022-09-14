import 'package:get/get.dart';

class CountController extends GetxController {
  int count = 0;

  incrementConter() {
    count++;
    update();
  }
}
