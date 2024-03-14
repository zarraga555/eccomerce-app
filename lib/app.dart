import 'package:eccomerce_app/features/authentication/screens/onboarding/onboarding.dart';
import 'package:eccomerce_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//Use this Class to setup themes, initial Bindings, any animations an much
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context){
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: EccomerceTheme.lightTheme,
      darkTheme: EccomerceTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}