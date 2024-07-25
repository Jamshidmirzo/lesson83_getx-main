import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:lesson83_getx/controller/counter_controller.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen({super.key});

  final counterController = Get.find<CounterController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
      ),
      body: Center(
        child: Obx(
          () => Text(
            counterController.count.toString(),
            style: const TextStyle(fontSize: 30),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FilledButton(
            onPressed: () {
              Get.defaultDialog(
                title: "Oddiy Dialog",
                textConfirm: "Tasdiqlash",
              );
            },
            child: const Text("Show Dialog"),
          ),
          const SizedBox(width: 10),
          FilledButton(
            onPressed: () {
              Get.bottomSheet(
                Container(
                  color: Colors.white,
                  width: double.infinity,
                  child: Column(
                    children: [
                      FilledButton(
                        onPressed: () {
                          Get.changeTheme(ThemeData.dark());
                        },
                        child: const Text("Dark"),
                      ),
                      FilledButton(
                        onPressed: () {
                          Get.changeTheme(ThemeData.light());
                        },
                        child: const Text("Light"),
                      ),
                    ],
                  ),
                ),
              );
            },
            child: Text("Show Modal".tr),
          ),
        ],
      ),
    );
  }
}
