import 'package:flutter/material.dart';
import 'package:parceiro/perfil/perfil_button.dart';

class PerfilPage extends StatefulWidget {
  @override
  _PerfilPageState createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  @override
  Widget build(BuildContext context) {
    return perfil();
  }
}

Widget perfil() {
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
                  ClipRRect(
                    borderRadius: BorderRadius.circular(80.0),
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: CircleAvatar(
                        radius: 35.0,
                        backgroundImage: AssetImage('assets/perfil_pic.png'),
                      ),
                    ),
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
                    Stack(
                      children: <Widget>[
                        ClipPath(
                          clipper: ClipCustom(endSize: 0.82, startSize: 0.77, midSize: 0.74, curveSize: 0.66),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFF5802D),
                            ),
                            height: 220.0,
                          ),
                        ),
                        ClipPath(
                          clipper: ClipCustom(endSize: 0.65, startSize: 0.72, midSize: 0.68, curveSize: 0.56),
                          child: Container(
                            color: Color(0xFFED712B),
                            height: 220.0,
                          ),
                        ),
                        ClipPath(
                          clipper: ClipCustom(endSize: 0.48, startSize: 0.67, midSize: 0.60, curveSize: 0.45),
                          child: Container(    
                            color: Color(0xFFEB6426),
                            height: 220.0,
                          ),
                        ),
                        Positioned(
                          left: 170.0,
                          child: Text(
                            'vendas',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.white
                            ),
                          ),
                        ),
                        Positioned(
                          left: 100.0,
                          top: 15.0,
                          child: Row(                              
                            children: <Widget>[
                              Text(
                                '121,54 R\$',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 60.0,
                                  fontWeight: FontWeight.bold
                                ),
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
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