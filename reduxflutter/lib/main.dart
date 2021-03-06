import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:reduxflutter/homepage.dart';
import 'package:reduxflutter/redux/store.dart';

void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return StoreProvider<dynamic>(
        store: store,
        child:MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
          
            primarySwatch: Colors.amber,
          ),
          home:  HomePage(),
        )
      );
  }
}
