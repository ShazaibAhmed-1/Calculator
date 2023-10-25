import 'package:calculator/Utils/app_colors.dart';
import 'package:flutter/material.dart';

class text_style extends StatelessWidget {
  text_style({super.key,required this.text,this.fontSize= 28});
String text;
  double fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(fontSize: fontSize,color: AppColor.White,fontWeight: FontWeight.bold),);
  }
}
