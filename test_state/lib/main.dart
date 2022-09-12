import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:test_state/textedit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  int _counter = 0;

  void _incrementCounter() {
    if (_counter > 4) _counter = 0;
    _counter++;
    setState(() {
      
    });
    tabController.animateTo(_counter);
  }

  decrementCounter(){
    _counter--;
    setState(() {});
    tabController.animateTo(_counter);

  }

  var controller1 = TextEditingController();
  var controller2 = TextEditingController();
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title)
      ),

      body: TabBarView(
        controller: tabController,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'You have pushed the button this many times:',
          ),
          Text(
            '$_counter',
            style: Theme.of(context).textTheme.headline4,
          ),
          const SizedBox(
            height: 30,
          ),
          // _counter.isEven ?
          CustomTextEdit(
            text: "enter dummy text 1",
          ),
          CustomTextEdit(text: "enter dummy text 2")
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left:30.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _counter==0 ? Text("first") :
          FloatingActionButton(
          onPressed: decrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.remove)),

          _counter==4 ? Text("last ") :
          FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.add)),
          ],
        
        ),
      ),
    );
  }
}
