import 'package:flutter/material.dart';

class SamplePage extends StatelessWidget {

  GlobalKey key4=GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  Text('a page', key: key4,),),
      
    );
  }
}