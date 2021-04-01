import 'package:flutter/material.dart';
import 'package:men_in_beauty/components/custom_suffix_icon.dart';
import 'package:men_in_beauty/components/default_button.dart';
import 'package:men_in_beauty/screens/home/home_screen.dart';

import '../../../constants.dart';

class CompleteProfileForm extends StatefulWidget {
  @override
  _CompleteProfileFormState createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  String username;
  String phone;
  String authNumber;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            buildUsernameFormField(),
            SizedBox(height: 20,),
            Row(
              children: [
                Expanded(flex:3,child: buildPhoneFormField()),
                Expanded(flex:1, child: TextButton(child: Text("인증번호"),onPressed: (){},))
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Expanded(flex:3,child: buildAuthNumberFormField()),
                Expanded(flex:1, child: TextButton(child: Text("인증"),onPressed: (){},))
              ],
            ),
            SizedBox(height: 40,),
            DefaultButton(
              text: "회원가입 하기",
              press:(){
                Navigator.popAndPushNamed(context, HomeScreen.routeName);
              }
            )
          ],
        ),
      ),
    );
  }

  TextFormField buildAuthNumberFormField() {
    return TextFormField(
      onSaved: (newValue) => username = newValue,
      validator: (value){
        if(value.isEmpty){
          return kAuthNullError;
        } else if (value != "123456"){
          return kInvalidAuthNumError;
        }
        return null;
      },
      decoration: InputDecoration(
          labelText: "Auth",
          hintText: "Enter your auth num",
          suffixIcon: CustomSurffixIcon(
            svgIcon: "assets/icons/Lock.svg",
          )
      ),
    );
  }

  TextFormField buildPhoneFormField() {
    //todo: add phone num reg exp error
    return TextFormField(
      onSaved: (newValue) => username = newValue,
      validator: (value){
        if(value.isEmpty){
          return kPhoneNumberNullError;
        }
        return null;
      },
      decoration: InputDecoration(
          labelText: "Phone",
          hintText: "Enter your phone number",
          suffixIcon: CustomSurffixIcon(
            svgIcon: "assets/icons/Phone.svg",
          )
      ),
    );
  }

  TextFormField buildUsernameFormField() {
    return TextFormField(
          onSaved: (newValue) => username = newValue,
      validator: (value){
        if(value.isEmpty){
          return kNameNullError;
        }
        return null;
      },
          decoration: InputDecoration(
              labelText: "Name",
              hintText: "Enter your name",
              suffixIcon: CustomSurffixIcon(
                svgIcon: "assets/icons/User.svg",
              )
          ),
        );
  }
}
