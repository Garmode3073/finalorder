import 'package:finalorder/common/textfields.dart';
import 'package:flutter/material.dart';
import 'package:finalorder/globals.dart' as g;
import 'package:flutter/services.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _regKey = GlobalKey<FormState>();

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
                TextFld(
                  hint: 'Name',
                ),
                TextFld(
                  hint: 'Email',
                ),
                NumFld(
                  hint: 'Phone Number',
                ),
                NumFld(
                  hint: 'Age',
                ),
                PassFld(
                  hint: 'Password',
                ),
                PassFld(
                  hint: 'Repeat Password',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
