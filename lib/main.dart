import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Chart/index.dart';
import 'chart/syncfusion_chart/index.dart';
import 'chart/fl_chart/index.dart';

void main() {
  runApp(GetMaterialApp(
    theme: ThemeData(
      scaffoldBackgroundColor: const Color(0xFF46d2f5),
      brightness: Brightness.light,
      primaryColor: const Color(0xFFFFFFFF),
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    initialRoute: '/home',
    getPages: [
      GetPage(name: '/home', page: () => const Home()),
      GetPage(name: '/sync', page: () => const Syncfusion()),
      GetPage(name: '/fl', page: () => const Fl())
    ],
  ));
}
