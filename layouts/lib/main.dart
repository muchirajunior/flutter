import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar:AppBar(
        title: Text("JUNIOR APPS"),
        centerTitle: true,
      ) ,

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,//align vertically
        crossAxisAlignment: CrossAxisAlignment.end, //allaign horizonataly
        children: <Widget>[
          Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,//align horizontally
             crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
                  Container(
                  padding: EdgeInsets.symmetric(horizontal:30,vertical:20),
                  child:Text("MUCHIRA"),
                  color: Colors.red
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal:30,vertical:20),
                  child:Text("MUCHIRA"),
                  color: Colors.blue,
                ),
                 Container(
                  padding: EdgeInsets.symmetric(horizontal:30,vertical:20),
                  child:Text("MUCHIRA"),
                  color: Colors.green,
                ),
            ]
            
          ),
          
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,//align horizontally
             crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
                  Container(
                  padding: EdgeInsets.symmetric(horizontal:30,vertical:20),
                  child:Text("MUCHIRA"),
                  color: Colors.red
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal:30,vertical:20),
                  child:Text("MUCHIRA"),
                  color: Colors.blue,
                ),
                 Container(
                  padding: EdgeInsets.symmetric(horizontal:30,vertical:20),
                  child:Text("MUCHIRA"),
                  color: Colors.green,
                ),
            ]
            
          ),
          
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,//align horizontally
             crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
                  Container(
                  padding: EdgeInsets.symmetric(horizontal:30,vertical:20),
                  child:Text("MUCHIRA"),
                  color: Colors.red
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal:30,vertical:20),
                  child:Text("MUCHIRA"),
                  color: Colors.blue,
                ),
                 Container(
                  padding: EdgeInsets.symmetric(horizontal:30,vertical:20),
                  child:Text("MUCHIRA"),
                  color: Colors.green,
                ),
            ]
            
          ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,//align horizontally
             crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
                  Container(
                  padding: EdgeInsets.symmetric(horizontal:30,vertical:20),
                  child:Text("MUCHIRA"),
                  color: Colors.red
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal:30,vertical:20),
                  child:Text("MUCHIRA"),
                  color: Colors.blue,
                ),
                 Container(
                  padding: EdgeInsets.symmetric(horizontal:30,vertical:20),
                  child:Text("MUCHIRA"),
                  color: Colors.green,
                ),
            ]
            
          ),
          
          
          
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Text("More"),
      ),
      )
  ));
}
