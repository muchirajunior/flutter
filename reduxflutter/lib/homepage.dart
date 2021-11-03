import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('flutter redux'),
      ),

      body: new Center(
        child: new StoreConnector(
          converter: (store)=>store.state,
          builder: (context, counter)=>Text(counter.toString(), style: TextStyle(fontSize: 20),)
          ),
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