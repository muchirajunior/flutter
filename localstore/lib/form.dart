import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {

  TextEditingController id= TextEditingController();
  TextEditingController name= TextEditingController();
  TextEditingController data= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
           title: Text("local store example")
         ) ,

         body: Container(
           padding: EdgeInsets.all(20) ,
           child: ListView(
             children: [
               SizedBox(height:20),
               TextField(controller: id,),
               SizedBox(height:20),
               TextField(controller: name,),
               SizedBox(height:20),
               TextField(controller: data,),

             ],
           ),
         ),

    );
  }
}