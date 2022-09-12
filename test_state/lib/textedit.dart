import 'package:flutter/material.dart';

class CustomTextEdit extends StatelessWidget {
  final String? text;
  final TextEditingController? controller;
  CustomTextEdit({Key? key, this.text,this.controller}) : super(key: key);
  final  _controller=TextEditingController();

  

  @override
  Widget build(BuildContext context) {
    return Padding(
    padding: const EdgeInsets.all(20.0),
    child: TextField(
      controller: _controller,
      onChanged: (text)=>print(text),
      decoration: InputDecoration(
        hintText: text
      ),
    ),
  );
  }
}