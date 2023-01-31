import 'package:flutter/material.dart';
import 'package:responsive_auth_ui/widgets/social_button.dart';

import 'widgets/gradient_button.dart';
import 'widgets/login_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Center(
        child: Column(
          children: const [
            // Image.asset('assets/images/signin_balls.png'),
            Text('Sign in',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                )),
            SizedBox(height: 50),
            SocialButton(
              iconPath: 'assets/svgs/fb_logo.svg',
              buttonLabel: 'Continue with Facebook',
              horizontalPadding: 90,
            ),
            SizedBox(height: 20),
            SocialButton(
              iconPath: 'assets/svgs/google_logo.svg',
              buttonLabel: 'Continue with Google',
            ),
            SizedBox(height: 15),
            Text(
              'or',
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            SizedBox(height: 40),
            LoginField(hintText: 'Email'),
            SizedBox(height: 15),
            LoginField(hintText: 'Password'),
            SizedBox(height: 20),
            GradientButton()
          ],
        ),
      )),
    );
  }
}
