import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theme_dark_light_ddd_tdd_stud/presentete/login/login_screen.dart';




import 'presentete/home/home_screen.dart';
import 'theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: thenmeDark,
      home: HomeScreen()
    );
  }
}



