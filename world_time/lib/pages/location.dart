import 'package:flutter/material.dart';

class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
 
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("LOCATIONS"),
        centerTitle: true,
      ),
      body: Text("CHOOSE LOCATION : "),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("Add"),
      ),
    );
  }
}
