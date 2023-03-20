import 'package:flutter/material.dart';
import 'package:foody/widgets/custom_input_field.dart';
import 'package:foody/widgets/custom_main_button.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../../../theme/custom_colors.dart';

class SignInPageView extends StatefulWidget {
  const SignInPageView({Key? key}) : super(key: key);

  @override
  _SignInPageViewState createState() => _SignInPageViewState();
}

class _SignInPageViewState extends State<SignInPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                height: 50.0,
              ),
              Image.asset('assets/images/PngItem_2746375.png'),
              Image.asset('assets/images/Fruit_Market_Color.png'),
              Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    InputFormFeild(
                      hintText: 'Username',
                      validator:
                          RequiredValidator(errorText: "Username is required"),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    InputFormFeild(
                      hintText: 'Password',
                      icon: Icons.lock,
                      validator:
                          RequiredValidator(errorText: "Password is required"),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'Don\'t have an account? SignUp',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              CustomMainButton(btnName: 'SignIn', tap: () {})
            ],
          ),
        ),
      ),
    );
  }
}
