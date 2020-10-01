import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo_statemanagement/home_page.dart';

class MainScreen extends StatelessWidget {
  final CounterControllar counterControllar = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Screen"),
      ),
      body: Center(
        child: Text(
            'value of counter is ' + counterControllar.count.string + '',
            style: TextStyle(fontSize: 25)),
      ),
    );
  }
}
