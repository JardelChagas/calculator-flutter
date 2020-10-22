import 'package:calculator/components/keyboard.dart';
import 'package:calculator/models/Memory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/display.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final Memory memory = Memory();

  _onPressed(String comand){
    if(memory.value == "0" && comand == '-'){
      setState((){
        memory.appliyCommand(comand);
      });
    }else if(comand == '+' || comand == '-' || comand == 'x' || comand == '/'  || comand == '%'){
      memory.appliyCommand(comand);
    }
    else
      setState((){
      memory.appliyCommand(comand);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: [
          Display(memory.value),
          Keyboard(_onPressed),
        ],
      ),
    );
  }
}




