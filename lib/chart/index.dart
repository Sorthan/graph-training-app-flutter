import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton.icon(
              icon: const Text(
                "Syncfusion Chart Demo",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
                textAlign: TextAlign.center,
              ),
              onPressed: () {
                Get.toNamed('sync');
              },
              label: const Icon(
                Icons.forward,
                color: Colors.white,
              ),
            ),
            const Padding(padding: EdgeInsets.all(30)),
            TextButton.icon(
              onPressed: () {
                Get.toNamed('fl');
              },
              icon: const Text(
                "Fl Chart Demo",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
                textAlign: TextAlign.center,
              ),
              label: const Icon(
                Icons.forward,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
