import 'package:get/state_manager.dart';

class CounterController extends GetxController {
  RxInt count = 0.obs;

  var f = "Salom".obs;

  RxList<Person> people = <Person>[].obs;

  RxList<Person> get list {
    return [...people].obs;
  }

  void increment() {
    count++;
    update();
  }

  void decrement() {
    count--;
    update();
  }
}

class Person {
  final String name;

  Person(this.name);
}
