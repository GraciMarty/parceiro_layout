import 'package:flutter/material.dart';

Widget perfilButton(String title) {
  return Row(
    children: <Widget>[
      Expanded(
        child: Container(
          margin: EdgeInsets.only(left: 50.0, right: 50.0),
          child: FlatButton(
            color: Color(0xFF37474F),
            textColor: Color(0xFFEED502),
            padding: EdgeInsets.only(top: 8.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40.0),
            ),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 35.0
              ),
            ),
            onPressed: () {},
          ),
        ),
      ),
    ],
  );
}

Widget textField(String hintText, bool obscure) {
    return TextField(
      obscureText: obscure,
      style: TextStyle(
        color: Color(0xFF37474F),
        fontSize: 30.0,
        height: 1
      ),
      strutStyle: StrutStyle(
        height: 1,
      ),
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF37474F)),
        ),
        labelText: hintText,
        labelStyle: TextStyle(
          fontSize: 35.0,
          color: Color(0xFF37474F),
        ),
      ),
    );
  }