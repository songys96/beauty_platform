import 'package:flutter/material.dart';
import 'package:men_in_beauty/components/custom_suffix_icon.dart';
import 'package:men_in_beauty/components/default_button.dart';
import 'package:men_in_beauty/constants.dart';
import 'package:men_in_beauty/helper/keyboard.dart';
import 'package:men_in_beauty/screens/complete_profile/complete_profile_screen.dart';
import 'package:men_in_beauty/screens/home/home_screen.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({
    Key key,
  }) : super(key: key);

  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  String confirmPassword;
  bool remember = false;
  final List<String> errors = [];

  void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: 20,),
          buildPasswordFormField(),
          SizedBox(height: 20,),
          buildConfirmPasswordFormField(),
          SizedBox(height: 20,),
          DefaultButton(
            text: "Sign Up",

            press: (){
              if(_formKey.currentState.validate()){
                _formKey.currentState.save();
                KeyboardUtil.hideKeyboard(context);
                Navigator.popAndPushNamed(context, CompleteProfileScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildConfirmPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => confirmPassword = newValue,
      onChanged: (value){
        if (value.isNotEmpty){
          removeError(error: kPassNullError);
        } else if (password == value){
          removeError(error: kMatchPassError);
        }
        confirmPassword = value;
      },
      validator: (value){
        if(value.isEmpty){
          addError(error:kPassNullError);
          return kPassNullError;
        } else if (password != value){
          print(password);
          print(value);
          addError(error: kMatchPassError);
          return kMatchPassError;
        }
        return null;
      },
      decoration: InputDecoration(
          labelText: "Confirm Password",
          hintText: "Re-Enter your password",
          suffixIcon: CustomSurffixIcon(
            svgIcon: "assets/icons/Lock.svg",
          )),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => print(newValue),
      onChanged: (value){
        if (value.isNotEmpty){
          removeError(error: kPassNullError);
        } else if (value.length >= 8){
          removeError(error: kShortPassError);
        }
        password = value;
      },
      validator: (value){
        if(value.isEmpty){
          addError(error:kPassNullError);
          return kPassNullError;
        } else if (value.length < 8){
          addError(error: kShortPassError);
          return kShortPassError;
        }
        return null;
      },
      decoration: InputDecoration(
          labelText: "Password",
          hintText: "Enter your password",
          suffixIcon: CustomSurffixIcon(
            svgIcon: "assets/icons/Lock.svg",
          )),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      // onSaved : 변경이 일어나면 저장
      onSaved: (newValue) => email = newValue,
      onChanged: (value){
        if (value.isNotEmpty){
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kEmailNullError);
          return kEmailNullError;
        } else if (!emailValidatorRegExp.hasMatch(value)){
          addError(error: kInvalidEmailError);
          return kInvalidEmailError;
        }
        return null;
      },
      decoration: InputDecoration(
          labelText: "Email",
          hintText: "Enter your email",
          suffixIcon: CustomSurffixIcon(
            svgIcon: "assets/icons/Mail.svg",
          )),
    );
  }
}
