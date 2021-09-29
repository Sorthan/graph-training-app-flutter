import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Fl extends StatefulWidget {
  const Fl({Key? key}) : super(key: key);

  @override
  _FlState createState() => _FlState();
}

class _FlState extends State<Fl> {
  int touchedIndex = -1;

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
                  Center(
                    child: Expanded(
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: BarChart(
                          BarChartData(barGroups: []),
                        ),
                      ),
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
                    child: Expanded(
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: ScatterChart(
                          ScatterChartData(),
                        ),
                      ),
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
                    child: Expanded(
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: PieChart(
                          PieChartData(
                              pieTouchData: PieTouchData(touchCallback:
                                  (FlTouchEvent event, pieTouchResponse) {
                                setState(() {
                                  if (!event.isInterestedForInteractions ||
                                      pieTouchResponse == null ||
                                      pieTouchResponse.touchedSection == null) {
                                    touchedIndex = -1;
                                    return;
                                  }
                                  touchedIndex = pieTouchResponse
                                      .touchedSection!.touchedSectionIndex;
                                });
                              }),
                              borderData: FlBorderData(
                                show: false,
                              ),
                              sectionsSpace: 0,
                              centerSpaceRadius: 40,
                              sections: showingSections()),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Text("First"),
                      Text("Second"),
                      Text("Third"),
                      Text("Forth")
                    ],
                  )
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

  List<PieChartSectionData> showingSections() {
    return List.generate(4, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 25.0 : 16.0;
      final radius = isTouched ? 60.0 : 50.0;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: const Color(0xff0293ee),
            value: 40,
            title: '40%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 1:
          return PieChartSectionData(
            color: const Color(0xfff8b250),
            value: 30,
            title: '30%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 2:
          return PieChartSectionData(
            color: const Color(0xff845bef),
            value: 15,
            title: '15%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 3:
          return PieChartSectionData(
            color: const Color(0xff13d38e),
            value: 15,
            title: '15%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        default:
          throw Error();
      }
    });
  }
}

class Test {
  Test(this.name, this.n);
  final String name;
  final int n;
}
