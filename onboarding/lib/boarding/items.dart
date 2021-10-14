import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

item(Icon icon,String text1, String text2){
  return Container(
    child: Column(
        children: [
            Icon(icon.icon, color: Colors.white, size: 80,),
            SizedBox(height: 60,),
            Text(text1, style: TextStyle(color: Colors.white, fontSize: 20),),
            SizedBox(height: 100,),
            Text(text2, style: TextStyle(color: Colors.white,),),
            
        ],
    ),
  );
}
