import 'package:flutter/material.dart';
import 'package:news_app/helper/keyboard.dart';

import '../../../components/default_button.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  String? fullName;
  String? email;
  String? password;
  bool? remember = false;
  final List<String?> errors = [];

  void addError({String? error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String? error}) {
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
          buildFullnameFormField(),
          SizedBox(height: getProportionateScreenHeight(25)),
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(25)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(25)),
          DefaultButton(
            text: "Create an account",
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                // if all are valid then go to success screen
                KeyboardUtil.hideKeyboard(context);
                //Navigator.pushNamed(context, LoginSuccessScreen.routeName);
              }
            },
          ),
          SizedBox(height: getProportionateScreenHeight(30)),
          GestureDetector(
            onTap: () => null,
            child: Text(
              "By signing up you agree to our \n Terms and Conditions of Use",
              style: TextStyle(decoration: TextDecoration.none),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(100)),
          DefaultButton(
            text: "I have an account",
            primary: false,
            press: () {},
          ),
        ],
      ),
    );
  }

  Container buildPasswordFormField() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200]!.withOpacity(0.6),
        borderRadius: BorderRadius.all(Radius.circular(13)),
      ),
      child: TextFormField(
        obscureText: true,
        onSaved: (newValue) => password = newValue,
        onChanged: (value) {
          if (value.isNotEmpty) {
            removeError(error: kPassNullError);
          } else if (value.length >= 8) {
            removeError(error: kShortPassError);
          }
          return null;
        },
        validator: (value) {
          if (value!.isEmpty) {
            addError(error: kPassNullError);
            return "";
          } else if (value.length < 8) {
            addError(error: kShortPassError);
            return "";
          }
          return null;
        },
        decoration: InputDecoration(
          hintText: "Password",
        ),
      ),
    );
  }

  Container buildEmailFormField() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200]!.withOpacity(0.6),
        borderRadius: BorderRadius.all(Radius.circular(13)),
      ),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        onSaved: (newValue) => email = newValue,
        onChanged: (value) {
          if (value.isNotEmpty) {
            removeError(error: kEmailNullError);
          } else if (emailValidatorRegExp.hasMatch(value)) {
            removeError(error: kInvalidEmailError);
          }
          return null;
        },
        validator: (value) {
          if (value!.isEmpty) {
            addError(error: kEmailNullError);
            return "";
          } else if (!emailValidatorRegExp.hasMatch(value)) {
            addError(error: kInvalidEmailError);
            return "";
          }
          return null;
        },
        decoration: InputDecoration(
          hintText: "Email",
        ),
      ),
    );
  }

  Container buildFullnameFormField() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200]!.withOpacity(0.6),
        borderRadius: BorderRadius.all(Radius.circular(13)),
      ),
      child: TextFormField(
        keyboardType: TextInputType.name,
        onSaved: (newValue) => fullName = newValue,
        onChanged: (value) {
          if (value.isNotEmpty) {
            removeError(error: kEmailNullError);
          }
          return null;
        },
        validator: (value) {
          if (value!.isEmpty) {
            addError(error: kEmailNullError);
            return "";
          }
          return null;
        },
        decoration: InputDecoration(
          hintText: "Full name",
        ),
      ),
    );
  }
}
