import 'package:calculator/Utils/app_colors.dart';
import 'package:calculator/presentation/Common/my_Button.dart';
import 'package:calculator/presentation/Themes/text_style.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class screen1 extends StatefulWidget {
  const screen1({super.key});

  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> {
  var userInput = '';
  var answer = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.Black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(alignment: Alignment.centerRight,child: text_style(text: userInput.toString(),fontSize: 40,)),
                      SizedBox(height: 20,),
                      text_style(text: answer.toString(),fontSize: 80,),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Row(
                      children: [
                        MyButton(
                          buttontext: 'AC',
                          onpress: () {
                            userInput = '';
                            answer = '';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          buttontext: '+/-',
                          onpress: () {
                            userInput += '+/-';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          buttontext: '%',
                          onpress: () {
                            userInput += '%';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          buttontext: '/',
                          Color1: AppColor.Orange,
                          onpress: () {
                            userInput += '/';
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          buttontext: '7',
                          onpress: () {
                            userInput += '7';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          buttontext: '8',
                          onpress: () {
                            userInput += '8';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          buttontext: '9',
                          onpress: () {
                            userInput += '9';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          buttontext: 'x',
                          Color1: AppColor.Orange,
                          onpress: () {
                            userInput += 'x';
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          buttontext: '4',
                          onpress: () {
                            userInput += '4';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          buttontext: '5',
                          onpress: () {
                            userInput += '5';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          buttontext: '6',
                          onpress: () {
                            userInput += '6';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          buttontext: '-',
                          Color1: AppColor.Orange,
                          onpress: () {
                            userInput += '-';
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          buttontext: '1',
                          onpress: () {
                            userInput += '1';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          buttontext: '2',
                          onpress: () {
                            userInput += '2';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          buttontext: '3',
                          onpress: () {
                            userInput += '3';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          buttontext: '+',
                          Color1: AppColor.Orange,
                          onpress: () {
                            userInput += '+';
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          buttontext: '0',
                          onpress: () {
                            userInput += '0';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          buttontext: '.',
                          onpress: () {
                            userInput += '.';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          buttontext: 'Del',
                          onpress: () {
                            userInput = userInput.substring(0,userInput.length-1);
                            setState(() {

                            });
                          },
                        ),
                        MyButton(
                          buttontext: '=',
                          Color1: AppColor.Orange,
                          onpress: () {
                            equalpress();
                            setState(() {

                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  void equalpress(){
    String finalUserInput = userInput;
    finalUserInput= userInput.replaceAll('x', '*');
    Parser p = Parser();
    Expression expression = p.parse(finalUserInput);
    ContextModel contextModel = ContextModel();

    double eval= expression.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();
  }
}
