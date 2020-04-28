import 'package:flutter/material.dart';

import 'package:parceiro/login/button_login.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
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
                      SizedBox(height: 70.0,),
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
                      SizedBox(height: 40.0),
                      Text(
                        'Acessar',
                        style: TextStyle(
                          color: Color(0xFF37474F),
                          fontFamily: 'IndieFlower',
                          fontSize: 40.0,
                        ),
                      ),
                      SizedBox(height: 20.0,),
                      Container(
                        margin: EdgeInsets.only(left: 45.0, right: 45.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF37474F)),
                            ),
                            labelText: 'Usuário',
                            labelStyle: TextStyle(
                              fontSize: 35.0,
                              color: Color(0xFF37474F),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0,),
                      Container(
                        margin: EdgeInsets.only(left: 45.0, right: 45.0),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF37474F)),
                            ),
                            labelText: 'Senha',
                            labelStyle: TextStyle(
                              fontSize: 35.0,
                              color: Color(0xFF37474F),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30.0),
                      menuButton('Acessar'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}