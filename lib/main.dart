import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './graph/index.dart';

void main() {
  runApp(GetMaterialApp(
    theme: ThemeData(
      scaffoldBackgroundColor: const Color(0xFFFCAEB7),
      brightness: Brightness.light,
      primaryColor: const Color(0xFFFFFFFF),
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    initialRoute: '/home',
    getPages: [
      GetPage(name: '/home', page: () => const Home()),
    ],
  ));
}
