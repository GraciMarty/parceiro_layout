import 'package:flutter/material.dart';
import 'package:parceiro/perfil/dados_bancarios.dart';


class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return DadosBancarios();
  }
}