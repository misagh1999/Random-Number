import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class RandomController extends GetxController {
  RxString startNumber = "".obs;
  RxString endNumber = "".obs;

  final startTextController = TextEditingController();
  final endTextController = TextEditingController();

  RxInt resultNumber = 0.obs;

  RxString endError = "".obs;
  RxString startError = "".obs;

  randomize() {
    bool hasError = false;

    startError.value = "";
    endError.value = "";
  
    if (startTextController.text.isEmpty) {
      hasError = true;
      startError.value = "Enter this Field";
    }
    if (endTextController.text.isEmpty) {
      hasError = true;
      endError.value = "Enter this Field";
    }

    int startInt = 0;
    int endInt = 0;

    if (!hasError) {
      startInt = int.parse(startTextController.text);
      endInt = int.parse(endTextController.text);

      if (startInt > 999999999) {
        hasError = true;
        startError.value = "Max Num: 999999999";
      }
      if (endInt > 999999999) {
        hasError = true;
        endError.value = "Max Num: 999999999";
      }
      
      if (startInt >= endInt) {
        hasError = true;
        endError.value = "The Second Number should be more than first number";
      }
    }

    if (!hasError) {
      repeatRandom(endInt, startInt);
    }
  }

  repeatRandom(int endInt, int startInt) async {
    Random random = Random();
    for (int i = 0; i < 10; i++) {
      await Future.delayed(Duration(milliseconds: 80), () {
        resultNumber.value = random.nextInt(endInt + 1 - startInt) + startInt ;
      });
    }
  }
}
