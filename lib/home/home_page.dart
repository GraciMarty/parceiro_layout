import 'package:flutter/material.dart';

import 'package:parceiro/home/button_home.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return home();
  }
}

Widget home() {
  return Container(
    child: Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFEC5E1B),
        title: Text(
          'REPRESENTANTE',
          style: TextStyle(
            fontFamily: 'IndieFlower',
            fontSize: 35.0
          ),
        ),
      ),
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
                    SizedBox(height: 35.0,),
                    Stack(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(80.0),
                          child: CircleAvatar(
                            radius: 90.0,
                            backgroundImage: AssetImage('assets/perfil_pic.png'),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 60,
                          width: 0,
                          child: IconButton(
                            color: Colors.white,
                            icon: Icon(
                              Icons.add_circle,
                              size: 50.0,
                            ),
                            onPressed: () {},
                            ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.0,),
                    Text('ANTÔNIO CARVALHO', style: TextStyle(color: Color(0xFF37474F), fontSize: 30.0),),
                    SizedBox(height: 20.0,),
                    homeButton('PERFIL', Icon(Icons.account_circle, size: 45,),),
                    SizedBox(height: 20.0,),
                    homeButton('EMPREENDIMENTOS', Icon(Icons.business, size: 45,),),
                    SizedBox(height: 20.0,),
                    homeButton('VENDAS', Icon(Icons.business_center, size: 45,),),
                    SizedBox(height: 20.0,),
                    homeButton('DOCUMENTOS', Icon(Icons.description, size: 45,),),
                    SizedBox(height: 20.0,),
                    homeButton('SAIR', Icon(Icons.cancel, size: 45,),),
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