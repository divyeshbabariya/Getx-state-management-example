import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo_statemanagement/main%20screen.dart';

class CounterControllar extends GetxController {
  var count = 0.obs;
  increment() => count.value++;
}

class HomePage extends StatelessWidget {
  final CounterControllar counterControllar = Get.put(CounterControllar());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Getx Demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
                  'This button is clicked ' +
                      counterControllar.count.string +
                      ' times',
                  style: TextStyle(fontSize: 20),
                )),
            RaisedButton(
              child: Text("Go to MainScreen"),
              onPressed: () {
                Get.to(MainScreen());
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
          ),
          onPressed: counterControllar.increment),
    );
  }
}
