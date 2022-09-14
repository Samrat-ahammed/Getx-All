import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:getx/Controller/counting.dart';
import 'package:getx/views/SecoundPage.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: MaterialButton(
                child: Text("Top SnakBar"),
                onPressed: () {
                  Get.snackbar("Plase Chack your internet connaction", "arrow",
                      snackPosition: SnackPosition.BOTTOM,
                      colorText: Colors.red,
                      backgroundColor: Colors.purple);
                },
              ),
            ),
            MaterialButton(
              onPressed: () {
                Get.defaultDialog(
                    title: "please check your internet connection",
                    content: Text("An arrow"),
                    cancel: TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: Text("Cancel")),
                    actions: [
                      Container(
                        child: TextButton(
                          onPressed: () {},
                          child: Text("Ok"),
                        ),
                      )
                    ]);
              },
              child: Text("Dailog"),
            ),
            MaterialButton(
              onPressed: () {
                Get.bottomSheet(Container(
                  height: 100,
                  child: Column(
                    children: [
                      Text("ButtomSheet in My App"),
                      Text("ButtomSheet in My App"),
                      Text("ButtomSheet in My App")
                    ],
                  ),
                ));
              },
              child: Text("bottomsheet"),
            ),
            GestureDetector(
              onTap: () {
                // Get.to(SecoundPage());
                Get.toNamed("Secound");
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
                      "Go to secount page",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(
                  SecoundPage(),
                  arguments: "hi i show this is a argumantes from Getx",
                );
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    height: 100,
                    width: 300,
                    decoration: BoxDecoration(color: Colors.pink),
                    child: Text(
                      "Go to secount page ad show argumants",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(ShowCounting());
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    height: 100,
                    width: 300,
                    decoration: BoxDecoration(color: Colors.pink),
                    child: Text(
                      "Go to count Page",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
