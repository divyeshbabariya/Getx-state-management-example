import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo_statemanagement/home_page.dart';

void main() {
  runApp(GetMaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
