import 'package:flutter/material.dart';
import 'package:men_in_beauty/components/social_card.dart';
import 'package:men_in_beauty/screens/sign_in/sign_in_screen.dart';

import '../../../size_config.dart';
import 'sign_up_form.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: getProportionScreenHeight(0.08),
                  ),
                  Text(
                    "Welcome Bro!",
                  ),
                  Text("signin"),
                  SizedBox(
                    height: getProportionScreenHeight(0.08),
                  ),
                  SignUpForm(),
                  SizedBox(
                    height: getProportionScreenHeight(0.03),
                  ),
                  Divider(),
                  SizedBox(
                    height: 20,
                  ),
                  Text("간편 로그인"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialCard(
                        icon: "assets/icons/facebook-2.svg",
                      ),
                      SocialCard(
                        icon: "assets/icons/google-icon.svg",
                      ),
                      SocialCard(
                        icon: "assets/icons/twitter.svg",
                      ),
                    ],
                  ),
                  TextButton(onPressed: () {
                    Navigator.popAndPushNamed(context, SignInScreen.routeName);
                  }, child: Text("로그인 하러가기"))
                ],
              ),
            ),
          ),
        ));
  }
}
