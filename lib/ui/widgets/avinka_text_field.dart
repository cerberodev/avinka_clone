import 'package:flutter/material.dart';

import 'password_icon_widget.dart';

class AvinkaTextField extends StatefulWidget {
  final double height;
  final EdgeInsets padding;
  final String hintText;
  final bool obscureText;
  AvinkaTextField({
    this.height,
    this.padding,
    this.hintText,
    this.obscureText = false,
  });

  @override
  _AvinkaTextFieldState createState() => _AvinkaTextFieldState();
}

class _AvinkaTextFieldState extends State<AvinkaTextField> {
  bool _showPassword = false;
  @override
  void initState() {
    super.initState();
    _showPassword = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    InputDecorationTheme idt = Theme.of(context).inputDecorationTheme;

    return Container(
      height: widget.height ?? 36,
      padding: widget.padding,
      child: TextField(
        cursorColor: Colors.grey,
        obscureText: _showPassword,
        decoration: InputDecoration(
          suffixIcon: widget.obscureText
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      _showPassword = !_showPassword;
                    });
                  },
                  child: PasswordIconWidget(_showPassword))
              : null,
          labelText: widget.hintText ?? "",
          labelStyle: idt.labelStyle.copyWith(color: Colors.grey),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    );
  }
}
