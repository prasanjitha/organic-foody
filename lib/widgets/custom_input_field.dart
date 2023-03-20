import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../theme/custom_colors.dart';

class InputFormFeild extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final bool obscureText;
  final FieldValidator validator;
  final bool isIcon;

  const InputFormFeild(
      {Key? key,
      this.hintText = "",
      this.icon = Icons.person,
      this.obscureText = false,
      this.isIcon = true,
      required this.validator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      validator: validator,
      cursorColor: Colors.black,
      decoration: InputDecoration(
        focusColor: CustomColors.SURFACE,
        isDense: true,
        contentPadding: const EdgeInsets.all(15),
        prefixIcon: isIcon
            ? Icon(
                icon,
                color: CustomColors.ONSURFACE,
              )
            : Icon(
                icon,
                color: Colors.white,
              ),
        prefixIconColor: CustomColors.SURFACE,
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.headline4,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
            width: 1,
            color: CustomColors.ONSURFACE,
            style: BorderStyle.none,
          ),
        ),
        filled: true,
        fillColor: CustomColors.BACKGROUND,
      ),
    );
  }
}
