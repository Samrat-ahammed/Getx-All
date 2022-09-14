import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:getx/Controller/CountController.dart';

class ShowCounting extends StatelessWidget {
  // CountController controller = Get.put(CountController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              GetBuilder<CountController>(
                init: CountController(),
                builder: (controller) {
                  return Text(
                    "count value is ${controller.count}",
                    style: TextStyle(color: Colors.green, fontSize: 30),
                  );
                },
              ),
              SizedBox(
                height: 50,
              ),
              MaterialButton(
                child: Text(
                  "Show count press this",
                  style: TextStyle(fontSize: 30),
                ),
                onPressed: () {
                  // controller.incrementConter();
                  Get.find<CountController>().incrementConter();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
