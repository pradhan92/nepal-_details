import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nepaldetials/binding/controller_binding.dart';
import 'package:nepaldetials/view/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'nepal details',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialBinding: ControllerBinding(),
      home: const MyHomePage(),
    );
  }
}
