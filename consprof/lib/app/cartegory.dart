import 'package:flutter/material.dart';

cartegoryCard( String name,Color color){
  return Card(
    elevation:10,
    color: color,
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(name, style: TextStyle(color: Colors.grey[300], fontSize: 16),),
          SizedBox(height: 20,),
          Row( 
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text("Amount in KSH ", style: TextStyle(color: Colors.grey[100], fontSize: 20) ),
              SizedBox(width:10),
              CircleAvatar( radius: 40, child: Text("400", style: TextStyle(color: Colors.grey[100], fontSize: 30),), )
            ],
           ),

           SizedBox(height: 20,),
           Text("Tax costs 80", style: TextStyle(color: Colors.grey[100], fontWeight: FontWeight.bold),),
        ],
      ),
    ),

  );
}