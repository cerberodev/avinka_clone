import 'package:avinka/ui/widgets/avinka_text_field.dart';
import 'package:flutter/material.dart';

import '../profile_screen.dart';
import '../register_screen.dart';
import 'avinka_button.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset("assets/images/avinka_logo.png"),
          AvinkaTextField(
            hintText: 'Correo electronico',
            height: 55,
            padding: EdgeInsets.symmetric(horizontal: 12),
          ),
          AvinkaTextField(
            obscureText: true,
            hintText: 'Contraseña',
            height: 55,
            padding: EdgeInsets.symmetric(horizontal: 12),
          ),
          AvinkaButton(
            height: 50,
            padding: EdgeInsets.symmetric(horizontal: 12),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return ProfileScreen();
              }));
            },
            backgroundColor: Colors.pink[400],
            primaryColor: Colors.white,
            child: Text('Ingresar', style: TextStyle(color: Colors.white)),
          ),
          Text(
            'Olvidaste tu contraseña',
            style: TextStyle(color: Colors.blue[300], fontSize: 11.0),
          ),
          SizedBox(height: 20),
          Text(
            'Aun no tienes cuenta?',
            style: TextStyle(color: Colors.black, fontSize: 16.0),
          ),
          AvinkaButton.reverse(
            height: 50,
            padding: EdgeInsets.symmetric(horizontal: 12),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return RegisterScreen();
              }));
            },
            backgroundColor: Colors.pink[400],
            primaryColor: Colors.white,
            child:
                Text('Registrate', style: TextStyle(color: Colors.pink[400])),
          ),
        ],
      ),
    );
  }
}
