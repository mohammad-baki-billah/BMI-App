import 'package:bmi_calculator/configs/colors.dart';
import 'package:flutter/material.dart';

var lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: const ColorScheme.light(
    primary: LPrymaryColor,
    background: LBGColor,
    onBackground: LFontColor,
    primaryContainer: LDivColor,
    onPrimaryContainer: LFontColor,
    onSecondaryContainer: LLavelColor,
  ),
);

var darkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: const ColorScheme.dark(
    primary: DPrymaryColor,
    background: DBGColor,
    onBackground: DFontColor,
    primaryContainer: DDivColor,
    onPrimaryContainer: DFontColor,
    onSecondaryContainer: DLavelColor,
  ),
);
