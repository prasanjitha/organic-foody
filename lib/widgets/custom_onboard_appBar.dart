import 'package:flutter/material.dart';

import '../views/home_page/home_page_provider.dart';

class CustomOnBoardAppBar extends StatelessWidget {
  const CustomOnBoardAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Container(),
      actions: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => HomePageProvider(),
                ),
              );
            },
            child: Text(
              'Skip',
              style: Theme.of(context).textTheme.headline4!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
        ),
      ],
    );
  }
}
