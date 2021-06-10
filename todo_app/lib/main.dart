import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/addtask.dart';
import 'package:todo_app/todopage.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index=0;
  final tabs=[
    TodoPage(),
    Container()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("TodoApp"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),

      body: tabs[index],

      floatingActionButton: FloatingActionButton(
        onPressed: () => showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) => AddTask(),
        ) ,
        backgroundColor: Colors.amber,
        child: Icon(Icons.add),
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.grey,
        
        currentIndex: index,
        onTap: (new_index) => setState((){
          index=new_index;
        }),

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.fact_check_outlined),
            label: "Todos"
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.done, size: 28,),
            label: "Complete"
          ),
        ],
      ),
      
    );
  }
}