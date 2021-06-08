import 'package:flutter/material.dart';
import 'package:finalorder/globals.dart' as g;
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: g.purple2,
      body: Center(
          child: SpinKitPouringHourglass(
        color: g.green,
        size: g.width * g.height * 0.0005,
      )),
    );
  }
}
