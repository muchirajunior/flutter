import 'package:flutter/material.dart';

customTextEdit(){
  return  TextField(
    onChanged: (text)=>print(text),
    decoration: const InputDecoration(
      hintText: "enter dummy text"
    ),
  );
}