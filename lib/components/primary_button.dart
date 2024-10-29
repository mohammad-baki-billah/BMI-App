import 'package:bmi_calculator/controller/bmi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PrimaryButton extends StatelessWidget {
  final IconData icon;
  final String btnName;
  final VoidCallback onPress;

  const PrimaryButton(
      {super.key,
      required this.icon,
      required this.btnName,
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    BmiController bmiController = Get.put(BmiController());
    return Expanded(
      child: InkWell(
        onTap: onPress,
        child: Obx(
          () => Container(
            height: 50,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: bmiController.Gender == btnName
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: bmiController.Gender == btnName
                      ? Theme.of(context).colorScheme.primaryContainer
                      : Theme.of(context).colorScheme.primary,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  btnName,
                  style: TextStyle(
                    fontSize: 18,
                    color: bmiController.Gender == btnName
                        ? Theme.of(context).colorScheme.primaryContainer
                        : Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
