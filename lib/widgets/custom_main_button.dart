import 'package:flutter/material.dart';

import '../theme/custom_colors.dart';

class CustomMainButton extends StatelessWidget {
  final String btnName;
  final VoidCallback tap;
  const CustomMainButton({
    this.btnName = 'Next',
    required this.tap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tap,
      child: Container(
        width: double.infinity,
        height: 42.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: CustomColors.PRIMARY,
        ),
        child: Center(
          child: Text(
            btnName,
            style: Theme.of(context).textTheme.headline4!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: CustomColors.BACKGROUND,
                ),
          ),
        ),
      ),
    );
  }
}
