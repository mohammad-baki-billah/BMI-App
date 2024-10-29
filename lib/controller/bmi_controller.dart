import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class BmiController extends GetxController {
  RxString Gender = 'MALE'.obs;

  RxInt weight = 5.obs;
  RxInt age = 2.obs;
  RxDouble height = 50.0.obs;
  RxDouble bmi = 0.0.obs;
  RxString bmiStatus = ''.obs;
  Rx<Color> colorStatus = Color(0xff246AFE).obs;

  void genderHandler(String gender) {
    Gender.value = gender;
  }

  void calculateBMI() {
    var hMeter = height / 100;
    bmi.value = weight / (hMeter * hMeter);
    findStatus();
    print(bmi);
    //print(hMeter);
  }

  void findStatus() {
    if (bmi.value < 18.5) {
      bmiStatus.value = 'Underweight';
      colorStatus.value = Colors.blue;
    } else if (bmi.value > 18.5 && bmi.value < 24.9) {
      bmiStatus.value = 'Normal';
      colorStatus.value = Colors.green;
    } else if (bmi.value > 25 && bmi.value < 29.5) {
      bmiStatus.value = 'Overweight';
      colorStatus.value = Colors.orange;
    } else if (bmi.value > 30 && bmi.value < 34.9) {
      bmiStatus.value = 'Obese';
      colorStatus.value = Colors.red.shade400;
    } else {
      bmiStatus.value = 'Extremly Obese';
      colorStatus.value = Colors.red;
    }
  }
}
