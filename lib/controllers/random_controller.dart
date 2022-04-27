import 'dart:math';

import 'package:get/state_manager.dart';

class RandomController extends GetxController {
  RxInt startNumber = 0.obs;
  RxInt endNumber = 0.obs;

  RxInt resultNumber = 0.obs;

  randomize() {
    Random random = Random();
    resultNumber.value =
        random.nextInt(endNumber.value - startNumber.value) + startNumber.value;
  }
}
