import 'package:finalorder/common/buttons.dart';
import 'package:finalorder/common/labels.dart';
import 'package:finalorder/common/textfields.dart';
import 'package:flutter/material.dart';
import 'package:finalorder/globals.dart' as g;
import 'package:flutter/services.dart';
import 'package:string_validator/string_validator.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _regKey = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  TextEditingController age = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController pass1 = TextEditingController();
  TextEditingController pass2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        SystemNavigator.pop();
        return Future.value(false);
      },
      child: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: Scaffold(
          backgroundColor: g.purple2,
          body: Form(
            key: _regKey,
            child: ListView(
              children: [
                SizedBox(
                  height: g.height * 0.035,
                ),
                AppName(),
                TagLine(),
                SizedBox(
                  height: g.height * 0.02,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: g.width * 0.05),
                  child: TextFld(
                    hint: 'Name',
                    ctrler: name,
                    validity: (String name) {
                      if (name.trim().isEmpty) {
                        return 'Name field must not be empty';
                      } else if (!isAlpha(name.trim())) {
                        return 'Invalid Name';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: g.height * 0.01,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: g.width * 0.05),
                  child: TextFld(
                    ctrler: email,
                    validity: (String email) {
                      if (email.trim().isEmpty) {
                        return 'Email field must not be empty';
                      } else if (!isEmail(email.trim())) {
                        return 'Invalid Email';
                      }
                      return null;
                    },
                    hint: 'Email',
                  ),
                ),
                SizedBox(
                  height: g.height * 0.01,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: g.width * 0.05),
                  child: Row(
                    children: [
                      Container(
                        width: g.width * 0.65,
                        child: NumFld(
                          hint: 'Phone Number',
                          ctrler: phone,
                          validity: (String phone) {
                            if (phone.trim().isEmpty) {
                              return 'Phone no field must not be empty';
                            } else if (!isNumeric(phone.trim())) {
                              return 'Invalid Phone Number';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(
                        width: g.width * 0.015,
                      ),
                      Expanded(
                        child: NumFld(
                          hint: 'Age',
                          ctrler: age,
                          validity: (String age) {
                            if (age.trim().isEmpty) {
                              return 'Invalid Age';
                            } else if (!isInt(age.trim()) ||
                                int.parse(age.trim()) > 120) {
                              return 'Invalid Age';
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: g.height * 0.01,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: g.width * 0.05),
                  child: PassFld(
                    hint: 'Password',
                    ctrler: pass1,
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
                  height: g.height * 0.01,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: g.width * 0.05),
                  child: PassFld(
                    hint: 'Confirm your Password',
                    ctrler: pass2,
                    validity: (String pass) {
                      if (pass.trim().isEmpty) {
                        return 'Password field must not be empty';
                      } else if (pass.trim() != pass1.text.trim()) {
                        return 'Password does not match';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: g.height * 0.025,
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
                          if (_regKey.currentState.validate()) {
                            setState(() {
                              g.controller.add(true);
                            });
                          }
                        },
                        child: Text(
                          'Register',
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
                  height: g.height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SecondaryButton(
                      height: g.height * 0.10,
                      width: g.width * 0.7,
                      activity: RawMaterialButton(
                        animationDuration: Duration(milliseconds: 100),
                        splashColor: g.deadGrey,
                        onPressed: () {
                          name.clear();
                          age.clear();
                          phone.clear();
                          pass2.clear();
                          email.clear();
                          pass1.clear();
                          Navigator.pop(
                            context,
                          );
                        },
                        child: Text(
                          'Already have an Account? Login',
                          style: TextStyle(
                            color: g.green,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: g.height * 0.035,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
