import 'package:flutter/material.dart';
import 'package:men_in_beauty/components/social_card.dart';
import 'package:men_in_beauty/screens/sign_up/sign_up_screen.dart';
import 'package:men_in_beauty/size_config.dart';

import 'complete_profile_form.dart';

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
                  CompleteProfileForm(),
                ],
              ),
            ),
          ),
        ));
  }
}
