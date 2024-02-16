import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:random_app/screens/welcome/welcome_screen.dart';
import 'package:random_app/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Random Number',
      debugShowCheckedModeBanner: false,
      theme: lightThemeData(context),
      home: WelcomeScreen(),
    );
  }
}