import 'package:bmi_calculator/components/age_selector.dart';
import 'package:bmi_calculator/components/height_selector.dart';
import 'package:bmi_calculator/components/primary_button.dart';
import 'package:bmi_calculator/components/rak_button.dart';
import 'package:bmi_calculator/components/theme_change_btn.dart';
import 'package:bmi_calculator/components/weight_selector.dart';
import 'package:bmi_calculator/controller/bmi_controller.dart';

import 'package:bmi_calculator/pages/result_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //ThemeController themeController = Get.put(ThemeController());
    BmiController bmiController = Get.put(BmiController());
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            ThemeChangeBtn(),
            Row(
              children: [
                Text(
                  'Welcome 😊',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSecondaryContainer,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'BMI Calculator',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                PrimaryButton(
                  onPress: () {
                    bmiController.Gender('MALE');
                  },
                  icon: Icons.male,
                  btnName: 'MALE',
                ),
                SizedBox(
                  width: 15,
                ),
                PrimaryButton(
                  onPress: () {
                    bmiController.Gender('FEMALE');
                  },
                  icon: Icons.female,
                  btnName: 'FEMALE',
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            const Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  HeightSelector(),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        WeightSelector(),
                        SizedBox(
                          height: 20,
                        ),
                        AgeSelector(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            RakButton(
              icon: Icons.done_all,
              btnName: 'LET\'S GO',
              onPress: () {
                //print("LET'S GO");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ResultPage(),
                  ),
                );
                bmiController.calculateBMI();
              },
            ),
          ],
        ),
      )),
    );
  }
}
