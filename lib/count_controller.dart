import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class CountController extends GetxController {
  var count = 0.obs;

  increment() {
    count++;
  }

  decrement() {
    if (count > 1) {
      count--;
    } else {
      Get.snackbar(
        "Not minus",
        "Not use decrement",
        snackPosition: SnackPosition.TOP,
      );
    }
  }
}
