import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Material(
      child: Column(
        children: <Widget>[
          Container(
            height: height * 0.25,
            color: Colors.green,
            child: SafeArea(
              child: Center(
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 42,
                      backgroundColor: Colors.red,
                    ),
                    Text(
                      "Your Name here",
                      style: TextStyle(color: Colors.white, fontSize: 25.0),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            height: height * 0.75 - 56,
            child: Column(
              children: <Widget>[
                ListTile(
                  dense: false,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Mi cuenta"),
                      Text(
                        "Editar",
                        style: TextStyle(color: Colors.blue),
                      )
                    ],
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Your Name Here"),
                ),
                ListTile(
                  leading: Icon(Icons.phone),
                  title: Text("99999999"),
                ),
                ListTile(
                  leading: Icon(Icons.mail),
                  title: Text("mail@gmail.com"),
                ),
                Expanded(
                  child: SizedBox.shrink(),
                ),
                ListTile(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  leading:
                      Icon(Icons.exit_to_app, color: Colors.redAccent[700]),
                  title: Text("Cerrar sesion",
                      style: TextStyle(color: Colors.redAccent[700])),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
