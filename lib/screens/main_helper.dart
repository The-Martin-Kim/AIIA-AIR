import 'package:flutter/material.dart';
import '../config/palette.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
    required this.isSignupScreen,
  });

  final bool isSignupScreen;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      right: 0,
      left: 0,
      child: Container(
        height: 300,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/alogo.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.only(top: 90, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: 'Welcome ',
                  style: const TextStyle(
                    letterSpacing: 1.0,
                    fontSize: 25,
                    color: Colors.white,
                  ),
                  children: [
                    TextSpan(
                      text: isSignupScreen ? 'to AIIA-AIR!' : 'back!',
                      style: const TextStyle(
                        letterSpacing: 1.0,
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Text(
                isSignupScreen
                    ? 'Sign up to continue.'
                    : 'Sign in to continue.',
                style: const TextStyle(
                  letterSpacing: 1.0,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GoogleLoginButton extends StatelessWidget {
  const GoogleLoginButton({
    super.key,
    required this.isSignupScreen,
  });

  final bool isSignupScreen;

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeIn,
      top: isSignupScreen
          ? MediaQuery.of(context).size.height - 125
          : MediaQuery.of(context).size.height - 165,
      right: 0,
      left: 0,
      child: Column(
        children: [
          Text(isSignupScreen ? 'or Sign up with' : 'or Sign in with'),
          const SizedBox(
            height: 10,
          ),
          TextButton.icon(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: Palette.googleColor,
              minimumSize: const Size(155, 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            icon: const Icon(Icons.add),
            label: const Text('Google'),
          ),
        ],
      ),
    );
  }
}
