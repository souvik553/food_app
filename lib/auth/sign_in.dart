import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/background.jpg'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 400,
              width: double.infinity,
              //color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Sign in to continue...",
                    style:
                        TextStyle(fontSize: 20, color: Colors.deepOrangeAccent),
                  ),
                  Text(
                    "food",
                    style:
                        TextStyle(fontSize: 45, color: Colors.white, shadows: [
                      BoxShadow(
                        blurRadius: 5,
                        color: Colors.greenAccent,
                        offset: Offset(3, 3),
                      ),
                    ]),
                  ),
                  Column(
                    children: [
                      SignInButton(
                        Buttons.Google,
                        text: "Sign in with Google",
                        onPressed: () {},
                      ),
                      SignInButton(
                        Buttons.Apple,
                        text: "Sign in with Apple",
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "By signing in you are agreeing to our ",
                        style: TextStyle(color: Colors.grey[800]),
                      ),
                      Text(
                        "Terms and Pricacy Policy",
                        style: TextStyle(color: Colors.grey[800]),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
