import 'package:flutter/material.dart';
import 'package:finalorder/globals.dart' as g;

class TextFld extends StatefulWidget {
  final String hint;
  final Function validity;
  final TextEditingController ctrler;

  const TextFld({Key key, this.hint, this.validity, this.ctrler})
      : super(key: key);
  @override
  _TextFldState createState() => _TextFldState();
}

class _TextFldState extends State<TextFld> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
        color: g.green,
        fontSize: 20,
      ),
      cursorColor: g.green,
      validator: widget.validity,
      controller: widget.ctrler,
      keyboardType: widget.hint == 'Email'
          ? TextInputType.emailAddress
          : TextInputType.text,
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
  final Function validity;
  final TextEditingController ctrler;

  const PassFld({Key key, this.hint, this.validity, this.ctrler})
      : super(key: key);
  @override
  _PassFldState createState() => _PassFldState();
}

class _PassFldState extends State<PassFld> {
  bool visible = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: !visible,
      validator: widget.validity,
      style: TextStyle(
        color: g.green,
        fontSize: 20,
      ),
      cursorColor: g.green,
      controller: widget.ctrler,
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

class NumFld extends StatefulWidget {
  final String hint;
  final Function validity;
  final TextEditingController ctrler;

  const NumFld({Key key, this.hint, this.validity, this.ctrler})
      : super(key: key);
  @override
  _NumFldState createState() => _NumFldState();
}

class _NumFldState extends State<NumFld> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
        color: g.green,
        fontSize: 20,
      ),
      cursorColor: g.green,
      validator: widget.validity,
      controller: widget.ctrler,
      keyboardType: TextInputType.number,
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
