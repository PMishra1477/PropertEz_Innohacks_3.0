import 'package:flutter/material.dart';
import 'package:propert_ez/ui/screens/dashboardScreen.dart';
import 'package:propert_ez/ui/screens/signUpScreen.dart';
import 'package:propert_ez/utils/colors.dart';
import 'package:propert_ez/utils/images.dart';

class SignInUp2Button extends StatelessWidget {
  const SignInUp2Button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: secondaryColor.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(2, 1), // changes position of shadow
          ),
        ],
        color: secondaryColor,
        borderRadius: BorderRadius.circular(230),
      ),
      height: 40,
      width: 330,
      child: Center(
        child: Center(
          child: TextButton(
            child: const Text(
              "Log In",
              style: TextStyle(
                  color: textColorWhite,
                  fontWeight: FontWeight.w500,
                  fontSize: 16),
            ),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const SignUpScreen(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class GoogleSignInButton2 extends StatelessWidget {
  const GoogleSignInButton2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ));
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(230),
        ),
        height: 32,
        width: 330,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              googleIcon,
              height: 16,
            ),
            const Text(
              "  Sign in with Google Account",
              style: TextStyle(color: textColorWhite, fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}

class SwitchLoginSignUp2 extends StatelessWidget {
  const SwitchLoginSignUp2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Not Registered yet? ',
            style: TextStyle(color: textColorWhite, fontSize: 10),
          ),
          GestureDetector(
            onTap: () {},
            child: const Text(
              'Sign Up',
              style: TextStyle(color: textColor, fontSize: 10),
            ),
          )
        ],
      ),
    );
  }
}
