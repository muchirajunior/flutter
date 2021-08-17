
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrGenerator extends StatefulWidget {
  @override
  _QrGeneratorState createState() => _QrGeneratorState();
}


class _QrGeneratorState extends State<QrGenerator> {

TextEditingController input=TextEditingController();


showQr(var text)=> AlertDialog(
  content: QrImage(
  data: text,
  version: QrVersions.auto,
  size: 200.0,
),

actions: [
  RaisedButton(onPressed: (){}, child: Text("ok"),),
  RaisedButton(onPressed: (){}, child: Text("save"),)
],
);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Qr code generator"),
        actions: [IconButton(onPressed: (){ Navigator.pushReplacementNamed(context, "/"); }, icon: Icon(Icons.qr_code_scanner ) )],
      ),
      
      body: Center(child: Column(
        children: [
          TextField(controller: input,),
          SizedBox(height:30),
          RaisedButton(onPressed: (){ 
              showDialog(context: context, builder: (context)=> showQr(input.text) );
            }, child: Text("generate Qr"),  ),
        ],
      ),    ) ,



    );
  }
}