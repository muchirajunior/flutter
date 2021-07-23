import 'package:flutter/material.dart';
import 'service.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController key=TextEditingController();
  TextEditingController value=TextEditingController();
  
 
  String text=Database().readData().toString();

      @override
      Widget build(BuildContext context) {
       
        return Scaffold(
             appBar: AppBar(
             title: Text("Local JsonData"),
             ),
    
             body: Container(
               padding: EdgeInsets.all(30),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: <Widget>[
                   TextField(controller: key,),
                   SizedBox(height:20),
                   TextField(controller: value,),
                   SizedBox(height:20),
                   RaisedButton(
                     onPressed:() async{
                       print("${key.text},${value.text}");
                      
                        await Database().writeData(value.toString());
                        print("write to file");
                       setState(() async {
                         text= await Database().readData();
                       });
                        key.clear();
                       value.clear();
                     },
                     child: Text("write"), 
                   ),
                   Text(text.toString()),
                 ],
                 ),
             ),
          
        );
      }
    }
    