import 'package:finalorder/common/textfields.dart';
import 'package:flutter/material.dart';
import 'package:finalorder/globals.dart' as g;

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
        body: Center(
          child: ListView(
            children: [
              TextFld(
                hint: 'Email',
              ),
              PassFld(
                hint: 'PassWord',
              ),
              RawMaterialButton(
                onPressed: null,
                child: Container(
                  color: g.green,
                  height: g.height * 0.05,
                  width: g.width * 0.3,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
