import 'package:flutter/material.dart';
import 'package:finalorder/globals.dart' as g;

class AppName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Final Order',
        style: TextStyle(
          color: g.green,
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class TagLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'A place to compete with yourself',
        style: TextStyle(
          color: g.green,
          fontSize: 15,
        ),
      ),
    );
  }
}
