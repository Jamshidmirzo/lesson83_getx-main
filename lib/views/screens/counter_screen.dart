import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:get/utils.dart';
import 'package:lesson83_getx/controller/counter_controller.dart';
import 'package:lesson83_getx/views/screens/second_screen.dart';

class CounterScreen extends StatelessWidget {
  CounterScreen({super.key});

  final counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: const Text(
          "Counter with GetX",
        ),
        actions: [
          IconButton(
            onPressed: () {
              if (Get.locale == const Locale("uz")) {
                Get.updateLocale(const Locale("en"));
              } else {
                Get.updateLocale(const Locale("uz"));
              }
            },
            icon: const Icon(Icons.language),
          ),
          IconButton(
            onPressed: () {
              Get.to(
                SecondScreen(),
                transition: Transition.cupertino,
              );
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: Center(
        child: GetBuilder<CounterController>(
          builder: (controller) {
            return Text(
              counterController.count.toString(),
              style: const TextStyle(fontSize: 30),
            );
          },
        ),
      ),
      // Center(
      //   child: Obx(() {
      //     return Text(
      //       counterController.count.toString(),
      //       style: const TextStyle(fontSize: 30),
      //     );
      //   }),
      // ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FilledButton(
            onPressed: () {
              counterController.increment();
            },
            child: Text("increment".tr),
          ),
          const SizedBox(width: 10),
          FilledButton(
            onPressed: () {
              counterController.decrement();
            },
            child: Text("decrement".tr),
          ),
        ],
      ),
    );
  }
}
