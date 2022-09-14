import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Home.dart';
import 'package:getx/views/3rdPage.dart';

class SecoundPage extends StatelessWidget {
  const SecoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Text(
                "working getx naviged",
                style: TextStyle(
                    color: Colors.pink,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.off(
                  ThirdPage(),
                );
                // Get.back();
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(color: Colors.pink),
                    child: Text(
                      "Go third page",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ),
            ),
            Text(Get.arguments.toString(),
                style: TextStyle(color: Colors.blueAccent, fontSize: 30))
          ],
        ),
      ),
    );
  }
}
