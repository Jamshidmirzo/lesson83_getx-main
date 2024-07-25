import 'package:get/get.dart';

class CounterTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'uz': {
          'increment': 'Qo\'shish',
          'decrement': 'Ayirish',
        },
        'en': {
          'increment': 'Increase',
          'decrement': 'Decrease',
        }
      };
}
