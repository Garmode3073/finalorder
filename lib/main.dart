import 'package:finalorder/auth/login.dart';
import 'package:finalorder/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:finalorder/globals.dart' as g;

void main() {
  g.controller.add(false);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Final Order',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: StreamProvider<bool>.value(
        value: g.stream,
        child: Wrapper(),
      ),
    );
  }
}

class Wrapper extends StatefulWidget {
  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<bool>(context);
    g.width = MediaQuery.of(context).size.width;
    g.height = MediaQuery.of(context).size.height;
    return user ? HomePage() : LoginPage();
  }
}
