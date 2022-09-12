import 'package:flutter/material.dart';

class CustomTextEdit extends StatelessWidget {
  final String? text;
  final TextEditingController? controller;
  CustomTextEdit({Key? key, this.text, this.controller}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return Padding(
    padding: const EdgeInsets.all(20.0),
    child: TextField(
      controller: controller,
      onChanged: (text)=>print(text),
      decoration: InputDecoration(
        hintText: text
      ),
    ),
  );
  }
}