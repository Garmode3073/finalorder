import 'dart:async';
import 'package:flutter/material.dart';

Color purple = Color(0xff571e73);
Color purple2 = Color(0xff470e63);
Color green = Color(0xff0ed145);
Color green2 = Color(0xff00a014);
Color deadGrey = Color(0xff292929);
Color deadGrey2 = Color(0xff191919);

double width;
double height;

StreamController<bool> controller = StreamController<bool>();
Stream stream = controller.stream;
