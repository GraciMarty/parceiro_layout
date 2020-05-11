import 'package:flutter/material.dart';

import 'package:parceiro/login/button_login.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return cadastro();
  }

  Widget cadastro() {
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
                      Text(
                        'CADASTRO',
                        style: TextStyle(
                          color: Color(0xFF37474F),
                          fontFamily: 'IndieFlower',
                          fontSize: 40.0,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        margin: EdgeInsets.only(left: 45.0, right: 45.0),
                        child: textField('Usuário', false),
                      ),
                      SizedBox(height: 20.0,),
                      Container(
                        margin: EdgeInsets.only(left: 45.0, right: 45.0),
                        child: textField('Nome', false)
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        margin: EdgeInsets.only(left: 45.0, right: 45.0),
                        child: textField('E-mail', false)
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        margin: EdgeInsets.only(left: 45.0, right: 45.0),
                        child: textField('CPF', false)
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        margin: EdgeInsets.only(left: 45.0, right: 45.0),
                        child: textField('Senha', true)
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        margin: EdgeInsets.only(left: 45.0, right: 45.0),
                        child: textField('Repita a senha', true)
                      ),
                      SizedBox(height: 25.0),
                      buttonLogin('Próximo'),
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

  Widget cadastroBank() {
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
                      Text(
                        'DADOS BANCÁRIOS',
                        style: TextStyle(
                          color: Color(0xFF37474F),
                          fontFamily: 'IndieFlower',
                          fontSize: 40.0,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        margin: EdgeInsets.only(left: 45.0, right: 45.0),
                        child: textField('Banco', false),
                      ),
                      SizedBox(height: 20.0,),
                      Container(
                        margin: EdgeInsets.only(left: 45.0, right: 45.0),
                        child: textField('Tipo de Conta', false)
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        margin: EdgeInsets.only(left: 45.0, right: 45.0),
                        child: textField('Titular', false)
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        margin: EdgeInsets.only(left: 45.0, right: 45.0),
                        child: textField('CPF Titular', false)
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        margin: EdgeInsets.only(left: 45.0, right: 45.0),
                        child: textField('Agência', true)
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        margin: EdgeInsets.only(left: 45.0, right: 45.0),
                        child: textField('Número Conta', true)
                      ),
                      SizedBox(height: 25.0),
                      buttonLogin('Cadastrar'),
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