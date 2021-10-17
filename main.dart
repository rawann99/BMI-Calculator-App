
import 'package:flutter/material.dart';
import 'package:flutter_udmey/BMIResult.dart';
import 'package:flutter_udmey/BmiCalculator.dart';
import 'package:flutter_udmey/CounterScreen.dart';


void main() {
  runApp(MyApp());
  //MyApp x=MyApp();
  //Widget y=MyApp();
}
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp

      ( debugShowCheckedModeBanner: false,
      home: BmiCalculator(),
    );

  }




}



