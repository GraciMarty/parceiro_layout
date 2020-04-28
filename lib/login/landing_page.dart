import 'package:flutter/material.dart';

import 'package:parceiro/home/home_page.dart';
import 'package:parceiro/login/login_page.dart';
import 'package:parceiro/login/register_page.dart';
import 'package:parceiro/login/sign_in_page.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}