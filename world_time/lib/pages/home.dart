import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> { 
     Map data={};

  @override
  Widget build(BuildContext context) {
   
   data=ModalRoute.of(context).settings.arguments;


    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FlatButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/location');
              },
              icon: Icon(Icons.edit_location,
                 size: 60,
                 color: Colors.amber,
              ),
              label: Text("find new Location",
               style: TextStyle(
                 fontSize: 15,
               )),
              
              ),

              SizedBox(height:20),
              Text(
                data['location'],
                style: TextStyle(
                  letterSpacing: 2,
                  fontSize:28,
                  
                ),
              ),

              SizedBox(height:20),
              Text(
                data['time'],
                style: TextStyle(
                  letterSpacing: 2,
                  fontSize:50,
                ),
              ),
        ],
      ),
    ));
  }
}
