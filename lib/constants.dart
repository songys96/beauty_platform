import 'package:flutter/material.dart';

// colors
// const kPrimaryColor = Color(0xFFEBCFC4);
// const kSecondaryColor = Color(0xFF6459C0);

const kSecondaryColor = Color(0xFFEBCFC4);
const kPrimaryColor = Color(0xFF6459C0);



// durations
const kAnimationDuration = Duration(milliseconds: 300);

// errors
final RegExp emailValidatorRegExp =
RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNameNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";
const String kAuthNullError = "인증번호가 입력되지 않았습니다";
const String kInvalidAuthNumError = "인증번호가 일치하지 않습니다";

