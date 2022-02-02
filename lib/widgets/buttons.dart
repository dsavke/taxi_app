import 'package:flutter/material.dart';

class LoginPageSignInButton extends StatelessWidget {
  const LoginPageSignInButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: const SizedBox(
        width: double.infinity,   
        child: Center(
          child: Text(
            'Sign In',
            style: TextStyle(
              fontFamily: 'Gilroy-Semibold',
              fontWeight: FontWeight.w600,
              fontSize: 17.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
      style: ButtonStyle(   // Defines styles of our SIgIn button
        padding:
            MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(15)),
        backgroundColor: MaterialStateProperty.all<Color>(
          const Color(0XFFFD6B68),
        ),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),    // To make our corners rounded
          ),
        ),
      ),
    );
  }
}
