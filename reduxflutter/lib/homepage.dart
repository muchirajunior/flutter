import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('flutter redux'),
      ),

      body: Center(
        child: Text("0", style: TextStyle(fontSize: 20),),
        ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: <Widget>[
            //increment
            FloatingActionButton(
              onPressed: (){},
              child: Icon(Icons.add),
            ),

            //decrement
            FloatingActionButton(
              onPressed: (){},
              child: Icon(Icons.remove),
            ),

          ],
        ),
      ),
      
      
    );
  }
}