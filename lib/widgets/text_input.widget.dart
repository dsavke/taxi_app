import 'package:flutter/material.dart';
import 'package:taxi_app/utils/constants/styles.dart';

class LoginPageTextInput extends StatefulWidget {
  // Custom Widget to get input in LogInPage
  const LoginPageTextInput(
      {Key? key, required this.hintText, required this.isPasswordInput})
      : super(key: key);
  final String hintText; // String to display as hint
  final bool
      isPasswordInput; // Supports both email and password mode which makes it reusable in two places

  @override
  _LoginPageTextInputState createState() => _LoginPageTextInputState();
}

class _LoginPageTextInputState extends State<LoginPageTextInput> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType:
          widget.isPasswordInput // Setting keyboard according to mode Selected
              ? TextInputType.text
              : TextInputType.emailAddress,
      obscureText: widget.isPasswordInput
          ? true
          : false, // To hide text in password mode
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(20.0),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide:
              BorderSide(color: Colors.black.withOpacity(0.05), width: 0.05),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide:
              BorderSide(color: Colors.black.withOpacity(0.05), width: 0.05),
        ),
        hintStyle: LogInScreenStyles.smallGreyTextStyle,
        fillColor: Colors.black.withOpacity(0.05),
        filled: true,
        hintText: widget.hintText,
      ),
    );
  }
}
