import 'package:flutter/material.dart';
import 'package:foody/theme/custom_colors.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.PRIMARY,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(),
          Image.asset('assets/images/Fruit_Market.png'),
          Image.asset('assets/images/mix_fruit_png_11.png'),
        ],
      ),
    );
  }
}
