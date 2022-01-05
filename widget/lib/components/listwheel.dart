import 'package:flutter/material.dart';

class ListWheel extends StatelessWidget {
  const ListWheel({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List numbers=[1,2,3,4,5,6,7,8,9,10,11,12,13];
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text("ListWheelScrollView"),
      ),
      body: ListWheelScrollView(
        itemExtent:150,
        diameterRatio: 2.0,
        offAxisFraction: -0.3,
         children: numbers.map((num) => Card(
           color: Colors.blue,
           child: ListTile(
             title:const Text('random number'),
              trailing: Text(num.toString()), ),
          )).toList() 
           )
    );
  }
}