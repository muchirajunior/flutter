import 'package:flutter/material.dart';
import 'package:fluttersqlite/database.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final text=TextEditingController();

  saveTodo()async{
        if (text.text.length>1)
           { await DatabaseHelper.instance.addTodo(Todo(name: text.text)); 
              text.clear();
              setState(() {});
      }
  }

  @override
  Widget build(BuildContext context) {
   var screen = MediaQuery.of(context).size;
    return Scaffold(
    appBar: AppBar(
    toolbarHeight: 100,
    title:Column(
      children: [
        const Text("flutter sqlite"),
        const SizedBox(height: 20,),
        Row(
        mainAxisAlignment: MainAxisAlignment.start,
         children: [
                 Container(
                   width: screen.width*0.7,
                   height: 50,
                   padding: const EdgeInsets.all(10),
                   color: Colors.white,
                   child:  TextField(
                     controller: text,
                     decoration: const InputDecoration(
                       hintText: "  Enter a todo..",
                       border: InputBorder.none
                     ), ),
                 ),
                 Container(
                   height: 50,
                   padding: const EdgeInsets.all(2),
                   color: Colors.purple[400],                     
                     child: IconButton(
                       icon: const Icon(Icons.library_add,
                       color: Colors.white, ),
                      onPressed: ()=>saveTodo()
                     ),
                   )
               ],),
      ],
    ),),


  body: FutureBuilder<List<Todo>>(
    future: DatabaseHelper.instance.getTodos(),
    builder: (context, AsyncSnapshot<List<Todo>> snapshot){
      if (snapshot.hasData) {
        if (snapshot.data!.isNotEmpty) {
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index){
              var todo=snapshot.data![index];
              return  Card(
                child: ListTile(
                  title: Text(todo.name.toString()),
                  leading: CircleAvatar(child: Text(todo.id.toString(),)),
                  trailing: IconButton( 
                    icon: const Icon(Icons.delete),
                    onPressed: ()async{ 
                        DatabaseHelper.instance.deleteTodo(todo.id as int);
                        setState(() { });
                     },
                   ),
                ),
              );
            }
            );
          
        } else{ return const Center(child: Text("No Todos .."),);}
      }
      else  { return const Center(child: CircularProgressIndicator(),);}
    },
  )
    
      
    );
  }
}