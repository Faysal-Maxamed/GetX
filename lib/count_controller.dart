import 'package:get/get.dart';

class count extends GetxController {
  var counter = 0.obs; // State-ka

  void increment() {
    counter++;
  }

  void decrement() {
    if (counter > 0) {
      counter--;
    }
    
  }
}
