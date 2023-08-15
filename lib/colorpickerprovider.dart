
import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
class colorState extends ChangeNotifier {
  Color color= Colors.green;
  Color pickerColor=Colors.blue;

  void change_color(Color color){

     pickerColor=color;
     notifyListeners();
  }

  }



