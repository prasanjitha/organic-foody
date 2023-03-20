import 'package:flutter/material.dart';
import 'package:foody/views/onBoardScreens/three_onboard_page.dart';

import '../../widgets/custom_main_button.dart';
import '../../widgets/custom_onboard_appBar.dart';

class TwoOnboardPage extends StatelessWidget {
  const TwoOnboardPage({Key? key}) : super(key: key);

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
              Image.asset('assets/images/onboardImageTwo.png'),
              Column(
                children: [
                  Text(
                    'Delivery on the way',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  const SizedBox(height: 15.0),
                  Text(
                    'Get your order by speed delivery',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ],
              ),
              Image.asset('assets/images/two_dot_line.png'),
              CustomMainButton(
                tap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ThreeOnboardPage(),
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
