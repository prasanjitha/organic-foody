import 'package:flutter/material.dart';
import 'package:foody/views/onBoardScreens/two_onboard_page.dart';

import '../../widgets/custom_main_button.dart';
import '../../widgets/custom_onboard_appBar.dart';

class OneOnboardPage extends StatelessWidget {
  const OneOnboardPage({Key? key}) : super(key: key);

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
              Image.asset('assets/images/onboardImageOne.png'),
              Column(
                children: [
                  Text(
                    'E Shopping',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  const SizedBox(height: 15.0),
                  Text(
                    'Explore  top organic fruits & grab them',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ],
              ),
              Image.asset('assets/images/one_dot_line.png'),
              CustomMainButton(
                tap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const TwoOnboardPage(),
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
