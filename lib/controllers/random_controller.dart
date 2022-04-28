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
    print("start: " + startTextController.text);
    print("end: " + endTextController.text);
    if (startTextController.text.isEmpty) {
      hasError = true;
      startError.value = "این عدد را وارد کنید";
    }
    if (endTextController.text.isEmpty) {
      hasError = true;
      endError.value = "این عدد را وارد کنید";
    }

    int startInt = 0;
    int endInt = 0;

    if (!hasError) {
      startInt = int.parse(startTextController.text);
      endInt = int.parse(endTextController.text);
      if (startInt >= endInt) {
        hasError = true;
        endError.value = "عدد پایان نباید کمتر از شروع باشد";
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
        resultNumber.value = random.nextInt(endInt - startInt) + startInt;
      });
    }
  }
}
