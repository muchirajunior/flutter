/**
 * dart container
 */
import 'package:flutter/material.dart';

void container() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar:AppBar(
        title: Text("JUNIOR APPS"),
        centerTitle: true,
      ) ,

      body: Container(
        padding: EdgeInsets.symmetric(horizontal:30, vertical:20),
        margin: EdgeInsets.all(30),
        color: Colors.grey[300],
        child: Text("Hello Myapp"),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Text("More"),
      ),
      )
  ));
}
