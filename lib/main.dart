import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_manegment/count_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final count countNumber = Get.put(count());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text("Number Of Counter is :${countNumber.counter}")),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () => countNumber.decrement(),
                    child: Text("Minus")),
                ElevatedButton(
                  onPressed: () => countNumber.increment(),
                  child: Text("add"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
