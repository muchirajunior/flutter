import 'package:bookclub/screens/home.dart';
import 'package:bookclub/screens/signup/login.dart';
import 'package:bookclub/screens/signup/register.dart';
import 'package:bookclub/services/currentuser.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
          create: (BuildContext context) =>CurrentUser(),
          child: MaterialApp(
        title: 'Book club',
        theme: ThemeData(
           canvasColor: Colors.teal[50],
          primarySwatch: Colors.blue,
        ),
        
        routes: {
          '/':(context)=>Home(),
          '/login':(context)=>Login(),
          '/register':(context)=>Register(),
        },
      ),
    );
  }
}
