import 'package:eccomerce_app/utils/theme/custom_themes/appbar_theme.dart';
import 'package:eccomerce_app/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:eccomerce_app/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:eccomerce_app/utils/theme/custom_themes/chip_theme.dart';
import 'package:eccomerce_app/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:eccomerce_app/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:eccomerce_app/utils/theme/custom_themes/text_field_theme.dart';
import 'package:eccomerce_app/utils/theme/custom_themes/text_themes.dart';
import 'package:flutter/material.dart';

class EccomerceTheme{
  EccomerceTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: EccomerceTextTheme.lightTextTheme,
    chipTheme: EccomerceChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: EccomerceBarTheme.lightAppBarTheme,
    checkboxTheme: EccomerceCheckboxTheme.lightCheckboxtheme,
    bottomSheetTheme: EccomerceBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: EccomcerceElevatedButtonTheme.lightElevatorButtonTheme,
    outlinedButtonTheme: EccomerceOutlinedButtonTheme.lightOutlineButtonTheme,
    inputDecorationTheme: EccomcerceTextFormFieldTheme.lightInputDecorationTheme
  );
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      textTheme: EccomerceTextTheme.darkTextTheme,
      chipTheme: EccomerceChipTheme.darkChipTheme,
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: EccomerceBarTheme.darkAppBarTheme,
      checkboxTheme: EccomerceCheckboxTheme.darkCheckboxtheme,
      bottomSheetTheme: EccomerceBottomSheetTheme.darkBottomSheetTheme,
      elevatedButtonTheme: EccomcerceElevatedButtonTheme.darkElevatorButtonTheme,
      outlinedButtonTheme: EccomerceOutlinedButtonTheme.darkOutlineButtonTheme,
      inputDecorationTheme: EccomcerceTextFormFieldTheme.darkInputDecorationTheme
  );
}