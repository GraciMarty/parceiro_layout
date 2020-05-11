import 'package:flutter/material.dart';

import 'package:parceiro/login/button_login.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return signIn();
  }
}

//Main Method 
Widget signIn() {
  return Scaffold(
    body: Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFEED502),
                    Color(0xFFEC5E1B),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment(1.0, 0.5),
                ),
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 120.0,),
                  Icon(
                    Icons.wb_sunny,
                    color: Color(0xFF37474F),
                    size: 150.0,
                  ),
                  Text(
                    'LOGOMARCA',
                    style: TextStyle(
                      color: Color(0xFF37474F),
                      fontFamily: 'IndieFlower',
                      fontSize: 40.0,
                    ),
                  ),
                  SizedBox(height: 90.0,),
                  buttonLogin('Entrar'),
                  SizedBox(height: 25.0,),
                  buttonLogin('Registrar')
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}