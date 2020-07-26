import 'package:flutter/material.dart';

class AvinkaButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;
  final Color primaryColor;
  final Color backgroundColor;
  final EdgeInsets padding;
  final double height;
  AvinkaButton({
    Color primaryColor,
    Color backgroundColor,
    this.child,
    this.onPressed,
    this.padding,
    this.height,
  })  : this.primaryColor = primaryColor,
        this.backgroundColor = backgroundColor;

  AvinkaButton.reverse({
    Color primaryColor,
    Color backgroundColor,
    this.child,
    this.onPressed,
    this.padding,
    this.height,
  })  : this.primaryColor = backgroundColor,
        this.backgroundColor = primaryColor;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Container(
          padding: padding,
          width: constraints.maxWidth,
          child: ButtonTheme(
            buttonColor: backgroundColor,
            height: height ?? 36.0, //TODO: Remove hardcoded value
            child: RaisedButton(
              onPressed: onPressed,
              child: child,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: primaryColor),
              ),
            ),
          ),
        );
      },
    );
  }
}
