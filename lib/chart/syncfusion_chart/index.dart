import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'package:flutter/material.dart';

class Syncfusion extends StatelessWidget {
  const Syncfusion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("syncfusion chart"),
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
                  Center(
                    child: SfCircularChart(
                      title: ChartTitle(text: 'How many sex appeal of person'),
                      legend: Legend(isVisible: true),
                      series: <PieSeries<_PieData, String>>[
                        PieSeries<_PieData, String>(
                            explode: true,
                            dataSource: [
                              _PieData("Men 39%", 39, "Male"),
                              _PieData("Women 54%", 54, "Female"),
                              _PieData("Other 7%", 7, "LGBT")
                            ],
                            explodeIndex: 0,
                            xValueMapper: (_PieData data, _) => data.xData,
                            yValueMapper: (_PieData data, _) => data.yData,
                            dataLabelMapper: (_PieData data, _) => data.text,
                            dataLabelSettings:
                                const DataLabelSettings(isVisible: true)),
                      ],
                    ),
                  ),
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
