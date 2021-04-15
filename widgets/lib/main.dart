import 'package:flutter/material.dart';

void main() async{
  runApp(MaterialApp(
    home: Scaffold(
      appBar:AppBar(
        title: Text("JUNIOR APPS"),
        centerTitle: true,
      ),

      body: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Image.asset("img/food.jpg"),
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(30),
              child: Text("ONE"),
              color: Colors.green[800],
              )
            ),

            Expanded(
              flex: 2,
            child: Container(
              padding: EdgeInsets.all(30),
              child: Text("TWO"),
              color: Colors.red,
              )
            ),

            Expanded(
              flex: 1,
            child: Container(
              padding: EdgeInsets.all(30),
              child: Text("3"),
              color: Colors.amber,
              )
            ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Text("+"),
        ),
      )
  ));
}
