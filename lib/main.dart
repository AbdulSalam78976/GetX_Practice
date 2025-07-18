import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_x_practice/StateManagement/favouritescreen.dart';
import 'package:get_x_practice/StateManagement/imagepickerscreen.dart';
import 'package:get_x_practice/StateManagement/switch_example.dart';
import 'package:get_x_practice/models/language.dart';
import 'package:get_x_practice/screens/homescreen.dart';
import 'package:get_x_practice/screens/localization.dart';
import 'package:get_x_practice/screens/screen_one.dart';
import 'package:get_x_practice/screens/responsive_screen.dart';
import 'package:get_x_practice/screens/screen_two.dart';
import 'package:get_x_practice/StateManagement/Login & Signup/login_screen.dart';
import 'package:get_x_practice/StateManagement/Login & Signup/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // we have to use GetMaterialApp instead of MaterialApp to use GetX
    return GetMaterialApp(
      translations: Language(),
      locale: Locale("en", "US"),
      fallbackLocale: Locale("en", "US"),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      //  home: const Localization(),

      //for using routes define all pages here
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => const HomeScreen()),
        GetPage(
          name: "/screenone",
          page: () => ScreenOne(title: ("")),
        ),
        GetPage(name: "/screentwo", page: () => const ScreenTwo()),

        GetPage(name: "/responsive", page: () => const Responsivescreen()),
      ],
    );
  }
}
