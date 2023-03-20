import 'dart:async';

import 'package:flutter/material.dart';
import 'package:foody/views/onBoardScreens/main_page.dart';
import 'package:foody/views/onBoardScreens/one_onboard_page.dart';

import 'theme/custom_themes.dart';
import 'views/authentication/signin_page/signin_page_view.dart';
import 'views/onBoardScreens/three_onboard_page.dart';
import 'views/onBoardScreens/two_onboard_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static bool launch = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Foody',
      theme: CustomThemes.lightTheme(context),
      home: launch
          ? FutureBuilder(
              future: Future.delayed(const Duration(seconds: 1)),
              builder: (ctx, timer) =>
                  timer.connectionState == ConnectionState.done
                      ? const SignInPageView()
                      : const MainPage(),
            )
          : const OneOnboardPage(),
    );
  }
}
