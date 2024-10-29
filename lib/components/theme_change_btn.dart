import 'package:bmi_calculator/controller/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeChangeBtn extends StatelessWidget {
  const ThemeChangeBtn({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeController themeController = Get.put(ThemeController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          //height: 50,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  themeController.changeTheme();
                },
                icon: Icon(
                  Icons.light_mode,
                  color: themeController.isDarkMode.value
                      ? Theme.of(context).colorScheme.onSecondaryContainer
                      : Theme.of(context).colorScheme.primary,
                ),
              ),
              IconButton(
                onPressed: () {
                  themeController.changeTheme();
                  print('dark mode');
                },
                icon: Icon(
                  Icons.dark_mode,
                  color: themeController.isDarkMode.value
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.onSecondaryContainer,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
