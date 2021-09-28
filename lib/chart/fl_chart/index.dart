import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Fl extends StatelessWidget {
  const Fl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("fl chart"),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Card(
              child: Column(
                children: [
                  const Text("Bar Graph"),
                  Center(),
                ],
              ),
            ),
            Card(
              child: Column(
                children: [
                  const Text("Scatter Graph"),
                  Center(),
                ],
              ),
            ),
            Card(
              child: Column(
                children: [
                  const Text("Circle Graph"),
                  Center(),
                ],
              ),
            ),
            Card(
              child: Column(
                children: [
                  const Text("9 grid"),
                  Center(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}

class _PieData {
  _PieData(this.xData, this.yData, this.text);
  final String xData;
  final num yData;
  final String text;
}
