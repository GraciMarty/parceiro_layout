import 'package:flutter/material.dart';
import 'package:parceiro/perfil/perfil_button.dart';

class DadosBancarios extends StatefulWidget {
  @override
  _DadosBancariosState createState() => _DadosBancariosState();
}

class _DadosBancariosState extends State<DadosBancarios> {
  @override
  Widget build(BuildContext context) {
    return dadosBancarios(
      
    );
  }
}

Widget dadosBancarios() {
  return Container(
    child: Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: 120.0,
              padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
              color: Color(0xFFDD5D22),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.arrow_back_ios,
                        size: 40.0,
                        color: Color(0xFF37474F),
                      ),
                    ],
                  ),
                  Text(
                    'Dados Bancários'
                  ),
                  SizedBox(width: 40.0,),
                ]
              ),
            ),
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
                    Expanded(
                      child: Container(
                        child: ListView(
                          padding: EdgeInsets.only(top: 0.0),
                          // cacheExtent: 900.0,
                          // crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            fieldUserInfo('Nome e Sobrenome', 'José Carvalho'),
                            fieldUserInfo('E-mail', 'josecarvalho@yahoo.com'),
                            fieldUserInfo('CPF', '111.222.333-44'),
                            SizedBox(height: 10.0,),
                            perfilButton('Alterar dados'),
                            SizedBox(height: 10.0,),
                            perfilButton('Dados Bancários'),
                          ], 
                        ),
                      ),
                    ),
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

fieldUserInfo(String name, String hintText) {
  return Container(
    margin: EdgeInsets.all(3.0),
    padding: EdgeInsets.only(left: 3.0, right: 5.0),
    decoration: BoxDecoration(
      color: Color(0xFF757575),
      borderRadius: BorderRadius.circular(10.0)
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget> [
        Container(
          margin: EdgeInsets.only(left: 12.0),
                  child: Text(
            name,
            style: TextStyle(
              color: Color(0xFFEED502),
              fontSize: 20.0
            ),
          ),
        ),
        TextField(
          // textCapitalization: TextCapitalization.characters,
          style: TextStyle(
            fontSize: 27.0,
            height: 0.1,
            color: Colors.white
          ),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.white),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFF757575),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFF757575),
              ),
            ),
          ),
        ),
      ], 
    ),
  );
}

class ClipCustom extends CustomClipper<Path> {

  ClipCustom({this.endSize, this.startSize, this.midSize, this.curveSize});
  double endSize;
  double startSize;
  double midSize;
  double curveSize;
  @override
  Path getClip(Size size) {

    var path = Path();
    path.lineTo(0.0, size.height*endSize);
    path.quadraticBezierTo(size.width*0.15, size.height*curveSize, size.width*0.38, size.height*midSize);
    path.lineTo(size.width*0.38, size.height*midSize);
    path.quadraticBezierTo(size.width*0.80, size.height*0.90, size.width, size.height*startSize);
    path.lineTo(size.width, size.height*0.67);
    path.lineTo(size.width, 0.0);


    return path;
  }
  
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}