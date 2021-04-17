import 'package:flutter/material.dart';

class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  void getData() async {
    //some little delay
    String name = await Future.delayed(Duration(seconds: 3), () {
      return "junior";
    });

    String details = await Future.delayed(Duration(seconds: 1), () {
      return " AI developer";
    });

    print('$name - $details');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getData();
  }

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
