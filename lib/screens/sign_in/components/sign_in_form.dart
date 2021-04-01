import 'package:flutter/material.dart';
import 'package:men_in_beauty/components/custom_suffix_icon.dart';
import 'package:men_in_beauty/components/default_button.dart';
import 'package:men_in_beauty/constants.dart';
import 'package:men_in_beauty/helper/keyboard.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({
    Key key,
  }) : super(key: key);

  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
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
          DefaultButton(
            text: "Log In",

            press: (){
              if(_formKey.currentState.validate()){
                _formKey.currentState.save();
                KeyboardUtil.hideKeyboard(context);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value){
        if (value.isNotEmpty){
          removeError(error: kPassNullError);
        } else if (value.length >= 8){
          removeError(error: kShortPassError);
        }
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
