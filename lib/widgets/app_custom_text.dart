import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppCustomText extends StatelessWidget {

  String text ;
  double textSize ;
  Color textColor;
  FontWeight fontWeight;


  AppCustomText({Key? key ,  required this.text,this.textSize = 14, this.textColor = Colors.black87, this.fontWeight = FontWeight.normal }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Text(
      text,
      textAlign: TextAlign.justify,
      style: TextStyle(color: textColor  , fontWeight: fontWeight , fontSize: textSize ,),

    );
  }
}
