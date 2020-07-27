import 'package:flutter/material.dart';

import 'widgets/login_form.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: <Widget>[
        Container(
          width: size.width,
          height: size.height,
          color: Colors.red,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            width: size.width * 0.73,
            height: size.height * 0.67,
            child: LoginForm(),
          ),
        ),
      ],
    );
  }
}
