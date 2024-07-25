import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:lesson83_getx/translations/counter_translations.dart';
import 'package:lesson83_getx/views/screens/counter_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: CounterTranslations(),
      locale: const Locale("uz"),
      home: CounterScreen(),
    );
  }
}
