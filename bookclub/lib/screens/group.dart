
import 'package:flutter/material.dart';

class Group extends StatefulWidget {
  @override
  _GroupState createState() => _GroupState();
}

class _GroupState extends State<Group> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("bookclub group"),
        centerTitle:true,
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: Text("Add"),
        ),
      
    );
  }
}