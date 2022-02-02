import 'package:flutter/material.dart';
import 'package:taxi_app/utils/constants/styles.dart';
import 'package:taxi_app/widgets/buttons.dart';
import 'package:taxi_app/widgets/text_input.widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    double screenWidth = MediaQuery.of(context).size.width;
    //To get the actual size of Screen
    return Scaffold(
      body: SafeArea(             //To prevent using top space used by sytem for displaying networks,etc
        child: SingleChildScrollView(     //This widget prevents our page from overflowing and rendering issues while using Keyboard
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.09,       //Padding of out entire page
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [                     //Sizedbox are used for spaces
              SizedBox(
                height: screenHeight * 0.13,
              ),
              const Text(
                'Hello Again!',
                style: TextStyle(
                  fontFamily: 'Gilroy-Semibold',
                  fontWeight: FontWeight.w600,
                  fontSize: 25.0,
                  color: Color(0xFF000000),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.03,
              ),
              SizedBox(
                width: screenWidth * 0.6,
                child: Text(
                  'Welcome back you\'ve \nbeen missed!',
                  style: TextStyle(
                    fontFamily: 'Gilroy-Regular',
                    fontSize: 20.0,
                    color: const Color(0xFF000000).withOpacity(0.8),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 0.06 * screenHeight,
              ),
              const LoginPageTextInput(                         //This is a custom textField for our input texts in LogInScreen
                  hintText: "Enter username", isPasswordInput: false),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              const LoginPageTextInput(                       //isPasswordInput sets the obsecure text field to  true which hides password 
                  hintText: "Password", isPasswordInput: true),
              SizedBox(
                height: screenHeight * 0.03,
              ),
              Align(
                alignment: Alignment.topRight,  
                child: Text('Recover Password',
                    style: LogInScreenStyles.smallGreyTextStyle,  //  smallGreyTextStyle defines some common styles used in our LogInPage
                    ),   
              ),
              SizedBox(
                height: screenHeight * 0.03,
              ),
              const LoginPageSignInButton(),            //Defined in widget directory,
              SizedBox(
                height: screenHeight * 0.04,
              ),
              const DividerWithText(),                   //  custom divider 
              SizedBox(
                height: screenHeight * 0.04,
              ),
              const SignInSocials(),          // Set of Sign In with social  buttons
              SizedBox(
                height: screenHeight * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Not a member?',
                    style: TextStyle(
                      fontFamily: 'Gilroy-Regular',
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 2.0,
                  ),
                  Text(
                    'Register now',
                    style: TextStyle(
                      fontFamily: 'Gilroy-Regular',
                      fontWeight: FontWeight.w700,
                      color: Colors.blue,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SignInSocials extends StatelessWidget {
  const SignInSocials({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(                               
      mainAxisAlignment: MainAxisAlignment.spaceAround,   
      children: [
        signInWithButton(                 //THis method returns a clickable SIgnIn Button widget with icons
          context,
          Image.asset('assets/images/google_icon.png'),
        ),
        signInWithButton(
          context,
          Image.asset('assets/images/apple_icon.png'),
        ),
        signInWithButton(
          context,
          Image.asset('assets/images/facebook_icon.png'),          
        ),
      ],
    );
  }

  InkWell signInWithButton(BuildContext context, Image image) {
    return InkWell(                   
      onTap: () {},
      child: Container(
        width: MediaQuery.of(context).size.width * 0.17,
        height: MediaQuery.of(context).size.width * 0.11,
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black.withOpacity(0.05), width: 2.0),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: image,
      ),
    );
  }
}

class DividerWithText extends StatelessWidget {
  const DividerWithText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(               
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        dividerPart(                // Left part of divider
          const Color(0X00808080),  // used white and black color for gradient look
          const Color(0XFF808080),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15.0,
          ),  
          child: Text(                    // Middle text
            'Or continue with',
            style: LogInScreenStyles.smallGreyTextStyle,
          ),
        ),

        dividerPart(                      // Right part of divider
          const Color(0XFF808080),        // color is swapped in order to make it look like a single broke line

          const Color(0X00808080),
        ),
      ],
    );
  }

  SizedBox dividerPart(Color start, Color end) {
    return SizedBox(
      width: 60,
      height: 2,
      child: Container(
        decoration: BoxDecoration(    //Box decoration provides gradient
          gradient: LinearGradient( 
            colors: [
              start,                
              end,
            ],
            begin: Alignment.centerLeft,    // Gradient starting position
            end: Alignment.centerRight,     // end position
          ),
        ),
      ),
    );
  }
}
