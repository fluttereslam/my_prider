

import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyNewApp());
}

class MyNewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyProfile(),
    );
  }
}


class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {






  Color ? myColor  =  Colors.grey[10];
  @override
  Widget build(BuildContext context) {

      return Scaffold(
        backgroundColor: Colors.white,
        appBar:
        AppBar(
          backgroundColor: Colors.white,
            title:Text("Create account",style: TextStyle(color: Colors.black)) ,

        )
        ,
        body: Column(



          crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
           // const SizedBox(height: 50,),
            Text("Sign up",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.cyanAccent ),),
            const SizedBox(height: 50,),

            Padding(padding: const EdgeInsets.all(25),

                child:  TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(Radius.circular(60))
                    ),
                    labelText: "Name",
                    hintText: "Enter your name",
                    suffixIcon: Icon(Icons.person,color: Colors.black,)


                  ),

                )
            ),


          const  Padding(padding: const EdgeInsets.all(25),
            
            child:  TextField(
                decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(60))
                ),
                  labelText: "email",
                  hintText: "Enter email",
                  suffixIcon: Icon(Icons.mail,color: Colors.black,)


      ),

      )
            ),
            //const SizedBox(height: 0,),


            const Padding(padding: EdgeInsets.all(25),

                child:  TextField(
                  decoration: InputDecoration(


                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(60))
                    ),
                      labelText: "Password",
                      hintText: "Enter password",
                      suffixIcon: Icon(Icons.visibility_off,color: Colors.black,),


                     // icon: Icon(Icons.visibility_off,color: Colors.black,),






                  ),

                )
            ),
            Container(
                width: 200,
                height: 50,
                alignment: Alignment.center,
                child:    ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(myColor)
                    ),

                    onPressed: (){
                      setState((){
                        myColor = Colors.blue ;
                      });

                    }, child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Text("Sign up " , style: TextStyle (color: Colors.black),)

                  ],
                ))
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text("Alrady a user?" ,style: TextStyle(color: Colors.black),),
                    Text("log in",style: TextStyle(color: Colors.blue),)

                  ],

                ),
                Row(


                  children: [
                    Icon(Icons.image,color: Colors.blue,),
                    Icon(Icons.facebook,color: Colors.blue,),
                    
                  ],

                )
              ],
            )






          ],






















        ),

    );
  }
}