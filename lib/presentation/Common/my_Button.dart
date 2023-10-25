import 'package:calculator/Utils/app_colors.dart';
import 'package:calculator/presentation/Themes/text_style.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  MyButton({super.key,this.buttontext,this.Color1,required this.onpress});
  String? buttontext;
  Color? Color1;
  VoidCallback onpress;
  @override
  Widget build(BuildContext context) {

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: InkWell(
          onTap: onpress,
          child: Container(
            height: 60,
            decoration: BoxDecoration(
              color: Color1 ?? AppColor.Grey,
              shape: BoxShape.circle,
            ),
            child: Center(child: text_style(text: buttontext!),),
          ),
        ),
      ),
    );
  }
}
