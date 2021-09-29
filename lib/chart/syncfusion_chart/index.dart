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
                  Center(
                    child: SfCartesianChart(
                      primaryXAxis: CategoryAxis(),
                      primaryYAxis: NumericAxis(),
                      series: <ChartSeries>[
                        ColumnSeries<PersonData, String>(
                          dataSource: getColumnPersonData(),
                          xValueMapper: (PersonData person, _) => person.name,
                          yValueMapper: (PersonData person, _) => person.age,
                          dataLabelSettings: const DataLabelSettings(
                            isVisible: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                children: [
                  const Text("Scatter Graph"),
                  Center(
                    child: SfCartesianChart(
                      primaryXAxis: DateTimeAxis(),
                      series: <ChartSeries>[
                        ScatterSeries<SaleData, DateTime>(
                          dataSource: getSaleData(),
                          xValueMapper: (SaleData sales, _) => sales.dateTime,
                          yValueMapper: (SaleData sales, _) => sales.price,
                          markerSettings: const MarkerSettings(
                            height: 10,
                            width: 10,
                            shape: DataMarkerType.circle,
                          ),
                        ),
                      ],
                    ),
                  ),
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
                      series: <DoughnutSeries<_PieData, String>>[
                        DoughnutSeries<_PieData, String>(
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
                  Center(
                    child: SfCartesianChart(
                      series: <ChartSeries>[],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PersonData {
  PersonData(this.name, this.age);
  final String name;
  final double age;
}

dynamic getColumnPersonData() {
  List<PersonData> columnData = <PersonData>[
    PersonData("Kenshiro", 35),
    PersonData("Satoshi", 17),
    PersonData("Genji", 26),
    PersonData("Hanzo", 27),
    PersonData("Kiryu", 46),
  ];

  return columnData;
}

class SaleData {
  // ignore: non_constant_identifier_names
  SaleData(this.dateTime, this.name, this.price);
  final DateTime dateTime;
  final String name;
  final double price;
}

dynamic getSaleData() {
  List<SaleData> saleData = <SaleData>[
    SaleData(DateTime(2010, 2, 4), 'India', 1.5),
    SaleData(DateTime(2011, 3, 5), 'China', 2.2),
    SaleData(DateTime(2007, 6, 4), 'USA', 3.32),
    SaleData(DateTime(2018, 12, 1), 'Japan', 4.56),
    SaleData(DateTime(2009, 11, 10), 'Russia', 5.87),
    SaleData(DateTime(2019, 2, 7), 'France', 6.8),
    SaleData(DateTime(2011, 9, 6), 'Germany', 8.5)
  ];

  return saleData;
}

class _PieData {
  _PieData(this.xData, this.yData, this.text);
  final String xData;
  final num yData;
  final String text;
}
