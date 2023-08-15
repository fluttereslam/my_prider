
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:provider/provider.dart';
import 'package:my_provider/colorpickerprovider.dart';

void main() {
  runApp(MyNewApp());
}

class MyNewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: Colorpicker(),
    );
  }
}


class Colorpicker extends StatefulWidget {
  const Colorpicker({Key? key}) : super(key: key);

  @override
  State<Colorpicker> createState() => _MyProfileState();
}

class _MyProfileState extends State<Colorpicker> {

  //Color ? myColor  =  Colors.grey[10];
  @override
  Widget build(BuildContext context) {

     return ChangeNotifierProvider(create: (_)=>colorState(),
        child:Consumer<colorState>(builder: (context,model,child){
          return Scaffold(
            // backgroundColor: pickerColor,
            appBar:
            AppBar(


              backgroundColor: model.pickerColor,
              title:Text("Create account",style: TextStyle(color: Colors.black)) ,

            ),

            body: Center(
              child: MaterialButton(
                onPressed: (){
                  showDialog(context: context, builder: (context)=>AlertDialog(content: SingleChildScrollView(
                    child: ColorPicker(onColorChanged: model.change_color,pickerColor: model.pickerColor,),
                  ),
                    actions: [
                      TextButton(onPressed: (){
                        model.change_color(model.pickerColor);
                        Navigator.pop(context);

                      },
                          child: Text("close")),
                    ],
                  )
                  );
                },
                color: model.pickerColor,
                child: Text("piker"),
              ),

            ),






          );
        }));

  }}