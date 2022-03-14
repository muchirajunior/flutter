import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theming/Home.dart';
import 'package:theming/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return ChangeNotifierProvider(
        create: (BuildContext context) => AppTheme(),
        builder: (context, _) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData.light(),
            darkTheme: ThemeData.dark(),
            themeMode: Provider.of<AppTheme>(context).theme,
            home: const MyHomePage(title: 'Flutter Demo Home Page'),
          );
        });
  }
}
