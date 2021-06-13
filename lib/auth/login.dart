import 'package:finalorder/auth/register.dart';
import 'package:finalorder/common/buttons.dart';
import 'package:finalorder/common/labels.dart';
import 'package:finalorder/common/textfields.dart';
import 'package:flutter/material.dart';
import 'package:finalorder/globals.dart' as g;
import 'package:string_validator/string_validator.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _signInKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController(text: '');
  TextEditingController pass = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        backgroundColor: g.purple2,
        body: Form(
          key: _signInKey,
          child: ListView(
            shrinkWrap: true,
            children: [
              SizedBox(
                height: g.height * 0.13,
              ),
              AppName(),
              TagLine(),
              SizedBox(
                height: g.height * 0.07,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: g.width * 0.05),
                child: TextFld(
                  hint: 'Email',
                  ctrler: email,
                  validity: (String email) {
                    if (email.trim().isEmpty) {
                      return 'Email field must not be empty';
                    } else if (!isEmail(email.trim())) {
                      return 'Invalid Email';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: g.height * 0.02,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: g.width * 0.05),
                child: PassFld(
                  hint: 'PassWord',
                  ctrler: pass,
                  validity: (String pass) {
                    if (pass.trim().isEmpty) {
                      return 'Password field must not be empty';
                    } else if (pass.trim().length < 8) {
                      return 'Password not strong enough';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: g.height * 0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PrimaryButton(
                    height: g.height * 0.08,
                    width: g.width * 0.55,
                    activity: RawMaterialButton(
                      animationDuration: Duration(milliseconds: 100),
                      splashColor: g.deadGrey2,
                      onPressed: () {
                        if (_signInKey.currentState.validate()) {
                          setState(() {
                            g.controller.add(true);
                          });
                        }
                      },
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          color: g.green,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: g.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SecondaryButton(
                    height: g.height * 0.08,
                    width: g.width * 0.7,
                    activity: RawMaterialButton(
                      animationDuration: Duration(milliseconds: 100),
                      splashColor: g.deadGrey,
                      onPressed: () {
                        email.clear();
                        pass.clear();
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation1, animation2) =>
                                RegisterPage(),
                          ),
                        );
                      },
                      child: Text(
                        'No Account? Register',
                        style: TextStyle(
                          color: g.green,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: g.height * 0.25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
