import 'package:flutter/material.dart';

import '../../widgets/custom_main_button.dart';
import '../../widgets/custom_onboard_appBar.dart';
import '../home_page/home_page_provider.dart';

class ThreeOnboardPage extends StatelessWidget {
  const ThreeOnboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: CustomOnBoardAppBar(),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/onboardImageThree.png'),
              Column(
                children: [
                  Text(
                    'Delivery Arrived',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  const SizedBox(height: 15.0),
                  Text(
                    'Order is arrived at your Place',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ],
              ),
              Image.asset('assets/images/three_dot_line.png'),
              CustomMainButton(
                btnName: 'Get Started',
                tap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => HomePageProvider(),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
