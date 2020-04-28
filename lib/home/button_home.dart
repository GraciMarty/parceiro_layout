import 'package:flutter/material.dart';

Widget homeButton(String title, Widget icon) {
  return Row(
    children: <Widget>[
      Expanded(
        child: Container(
          margin: EdgeInsets.only(left: 50.0, right: 50.0),
          child: FlatButton(
            color: Color(0xFF37474F),
            textColor: Color(0xFFEED502),
            padding: EdgeInsets.all(4.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40.0),
            ),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 15.0),  
                  child: icon,
                ),
                SizedBox(width: 10.0,),
                Padding(
                  padding: EdgeInsets.only(top: 6.0),
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 25.0
                    ),
                  ),
                ),
              ], 
            ),
            onPressed: () {},
          ),
        ),
      ),
    ],
  );
}