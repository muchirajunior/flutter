import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

item1(){
  return Container(
    child: Column(
        children: [
            Icon(Icons.person, color: Colors.white, size: 80,),
            SizedBox(height: 20,),
            Text("WELCOME TO OUR GREAT APPLICATION", style: TextStyle(color: Colors.white, fontSize: 20),),
            SizedBox(height: 20,),
            Text("Thanks. This was my problem. Actually I had the wrong indentation too. So people should check their indentation and also run flutter clean", style: TextStyle(color: Colors.white,),),
            
        ],
    ),
  );
}

item2(){
  return Container(
    child: Column(
        children: [
            Icon(Icons.person_pin_circle, color: Colors.white, size: 80,),
            SizedBox(height: 20,),
            Text("WELCOME TO OUR GREAT APPLICATION", style: TextStyle(color: Colors.white, fontSize: 20),),
            SizedBox(height: 20,),
            Text("Thanks. This was my problem. Actually I had the wrong indentation too. So people should check their indentation and also run flutter clean", style: TextStyle(color: Colors.white,),),
            
        ],
    ),
  );
}

item3(){
  return Container(
    child: Column(
        children: [
            Icon(Icons.person_add, color: Colors.white, size: 80,),
            SizedBox(height: 20,),
            Text("WELCOME TO OUR GREAT APPLICATION", style: TextStyle(color: Colors.white, fontSize: 20),),
            SizedBox(height: 100,),
            Text("Thanks. This was my problem. Actually I had the wrong indentation too. So people should check their indentation and also run flutter clean", style: TextStyle(color: Colors.white,),),
            
        ],
    ),
  );
}
