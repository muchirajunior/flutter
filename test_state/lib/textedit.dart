import 'package:flutter/material.dart';

class CustomTextEdit extends StatelessWidget {
  final String? text;
  CustomTextEdit({Key? key, this.text}) : super(key: key);

  final TextEditingController _controller=TextEditingController();

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