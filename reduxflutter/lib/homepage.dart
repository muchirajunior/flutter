import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:reduxflutter/redux/actions.dart';
import 'package:reduxflutter/redux/store.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  var text=store.state.toString();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('flutter redux'),
      ),

      body: new Center(
        // child: new StoreConnector(
        //   converter: (store)=>store.state,
        //   builder: (context, counter)=>Text(counter.toString(), style: TextStyle(fontSize: 20),)
        //   ),
        child:Text(text),
        ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: <Widget>[
            //increment
           
              FloatingActionButton(
                onPressed: (){store.dispatch(MyActions.Increment); setState(() {
                  text=store.state.toString();
                }); },
                child: Icon(Icons.add),
              ),
            

            //decrement
            FloatingActionButton(
              onPressed: ()=>store.dispatch(MyActions.Decrement),
              child: Icon(Icons.remove),
            ),

          ],
        ),
      ),
      
      
    );
  }
}