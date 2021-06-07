import 'package:flutter/material.dart';
import 'package:finalorder/globals.dart' as g;

class TextFld extends StatefulWidget {
  final String hint;

  const TextFld({Key key, this.hint}) : super(key: key);
  @override
  _TextFldState createState() => _TextFldState();
}

class _TextFldState extends State<TextFld> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
        color: g.green,
      ),
      cursorColor: g.green,
      decoration: InputDecoration(
        hintText: widget.hint,
        hintStyle: TextStyle(color: g.green2),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: g.green,
          ),
          borderRadius: BorderRadius.circular(g.width * g.height * 0.000075),
        ),
        enabled: true,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: g.green2),
          borderRadius: BorderRadius.circular(g.width * g.height * 0.000075),
        ),
      ),
    );
  }
}

class PassFld extends StatefulWidget {
  final String hint;

  const PassFld({Key key, this.hint}) : super(key: key);
  @override
  _PassFldState createState() => _PassFldState();
}

class _PassFldState extends State<PassFld> {
  bool visible = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: !visible,
      style: TextStyle(
        color: g.green,
      ),
      cursorColor: g.green,
      decoration: InputDecoration(
        hintText: widget.hint,
        hintStyle: TextStyle(color: g.green2),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: g.green,
          ),
          borderRadius: BorderRadius.circular(g.width * g.height * 0.000075),
        ),
        enabled: true,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: g.green2),
          borderRadius: BorderRadius.circular(g.width * g.height * 0.000075),
        ),
        suffixIcon: IconButton(
          icon: Icon(visible ? Icons.visibility : Icons.visibility_off),
          onPressed: () {
            setState(() {
              visible = !visible;
            });
          },
        ),
      ),
    );
  }
}
