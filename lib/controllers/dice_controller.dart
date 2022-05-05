import 'dart:math';

import 'package:get/get.dart';
import 'package:random_app/constants.dart';

class DiceController extends GetxController {
  RxString dicePath = Assets.DICE5.obs;

  roll() {
    int start = 1;
    int end = 6;
    int result = 0;

    Random random = Random();
    result = random.nextInt(end + 1 - start) + start;

    switch (result) {
      case 1:
        dicePath.value = Assets.DICE1;
        break;
      case 2:
        dicePath.value = Assets.DICE2;
        break;
      case 3:
        dicePath.value = Assets.DICE3;
        break;
      case 4:
        dicePath.value = Assets.DICE4;
        break;
      case 5:
        dicePath.value = Assets.DICE5;
        break;
      case 6:
        dicePath.value = Assets.DICE6;
        break;
    }
  }

  repeatRoll() async {
    for (int i = 0; i < 10; i++) {
      await Future.delayed(Duration(milliseconds: 80), () {
        roll();
      });
    }
  }
}
