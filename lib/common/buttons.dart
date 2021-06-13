import 'package:flutter/material.dart';
import 'package:finalorder/globals.dart' as g;

class PrimaryButton extends StatefulWidget {
  final RawMaterialButton activity;
  final double height;
  final double width;
  const PrimaryButton({Key key, this.activity, this.height, this.width})
      : super(key: key);
  @override
  _PrimaryButtonState createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: g.deadGrey,
        border: Border.all(color: g.green, style: BorderStyle.solid, width: 5),
        borderRadius: BorderRadius.circular(g.width * g.height * 0.00005),
      ),
      height: widget.height,
      width: widget.width,
      child: widget.activity,
    );
  }
}

class SecondaryButton extends StatefulWidget {
  final RawMaterialButton activity;
  final double height;
  final double width;

  const SecondaryButton({Key key, this.activity, this.height, this.width})
      : super(key: key);
  @override
  _SecondaryButtonState createState() => _SecondaryButtonState();
}

class _SecondaryButtonState extends State<SecondaryButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: g.deadGrey2,
        border: Border.all(color: g.green2, style: BorderStyle.solid, width: 5),
        borderRadius: BorderRadius.circular(g.width * g.height * 0.00005),
      ),
      height: widget.height,
      width: widget.width,
      child: widget.activity,
    );
  }
}
