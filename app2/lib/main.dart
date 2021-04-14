import 'package:flutter/material.dart';

void main() {
   var num=0;
  runApp(MaterialApp(
    home:Scaffold(
      appBar: AppBar(
        title: Text("MUCHIRA APPS"),
        backgroundColor: Colors.green[800],
        centerTitle: true,
      ),
      body: Center (
        child: RaisedButton.icon( //also  FlatButton can be used
          onPressed: (){
            print("you mailed me");
          },
          icon: Icon( //iconButton can be used to make a clickable icon
            Icons.mail,
            color: Colors.lightBlue,
            size: 60,
        ),
          label: Text("mail me"),
          color: Colors.amber,
        ),
        
      ),

      floatingActionButton: FloatingActionButton(
          onPressed: (){
            num=num+1;
            print("added number : $num");
          },
          child:Text("+",
              style: TextStyle(
                fontSize: 20.0,

              ),
            ),
            backgroundColor: Colors.green[600],
      ),
      ),
  ));
}
