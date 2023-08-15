//import 'dart:io';


import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';

class counterState extends ChangeNotifier {

  int counter = 0;

  int getCounter(){
    return counter;
  }
  void increament_counter(){
     counter+=1;
    notifyListeners();
  }
}