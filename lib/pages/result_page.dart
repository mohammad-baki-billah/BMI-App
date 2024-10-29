import 'package:bmi_calculator/components/rak_button.dart';
import 'package:bmi_calculator/controller/bmi_controller.dart';
import 'package:bmi_calculator/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    BmiController bmiController = Get.put(BmiController());
    //var percentageValue = bmiController.bmi.value / 100;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SafeArea(
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  },
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.arrow_back_ios_new,
                        size: 20,
                      ),
                      Text(
                        'Back',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'Your BMI Is: ',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Container(
                  height: 350,
                  child: Obx(
                    () => CircularPercentIndicator(
                      footer: Text(
                        '${bmiController.bmiStatus.value}',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: bmiController.colorStatus.value,
                        ),
                      ),
                      radius: 140.0,
                      lineWidth: 30.0,
                      percent: bmiController.bmi.value / 100,
                      circularStrokeCap: CircularStrokeCap.round,
                      animation: true,
                      animationDuration: 2000,
                      animateFromLastPercent: true,
                      center: new Text(
                        '${bmiController.bmi.value.toStringAsFixed(1)}%',
                        style: TextStyle(
                          fontSize: 60.0,
                          fontWeight: FontWeight.bold,
                          color: bmiController.colorStatus.value,
                        ),
                      ),
                      backgroundColor: Theme.of(context)
                          .colorScheme
                          .primary
                          .withOpacity(0.2),
                      progressColor: bmiController.colorStatus.value,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'This range suggests that a person has an appropriate weight for their height, reducing the risk of health issues like heart disease, diabetes, and high blood pressure, while promoting overall well-being and longevity.',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              RakButton(
                icon: Icons.arrow_back_ios,
                btnName: 'Find out more',
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
