import 'dart:math';

import 'package:flutter/cupertino.dart';

class BmiCalc{

  BmiCalc(@required this.height,@required this.weight);
  final int height;
  final int weight;
  double _bmi=0.0;
  String Calculator(){

    _bmi = weight/ pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }
  
  String StatusUpdate(){
    if(_bmi>25 )
      return 'Overweight';
    if(_bmi< 18.5)
      return 'Underweight';
    else if(_bmi<25 && _bmi>18.5)
      return 'Normal';
    else
      return '';

    }

    String Message(){
      if(_bmi<18.5)
        return 'You have a Low Body Weight.You should eat more.';
      if( _bmi<25 && _bmi>=18.5)
        return 'You have a Normal Body Weight.Good Job! ';
      else{
        return 'You have a High Body Weight.You should exercise more';}

    }
  }
