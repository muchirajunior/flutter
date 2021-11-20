import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class Todo{
  int? id;
  String? name;

  Todo({this.id, required this.name});

  factory Todo.fromMap(Map<String, dynamic> map)=>  Todo(
    id: map['id'],
    name: map['name']);

  Map<String, dynamic> toMap()=> {"id":id, "name":name};
}



class DatabaseHelper{
  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance =DatabaseHelper._privateConstructor();

  get database  async => await _initDB();


  _initDB() async{
    Directory directory= await getApplicationDocumentsDirectory();
    String path = join(directory.path,'todo.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _createDB,
    );
  }


  _createDB(Database db, int version) async{
    await db.execute('''
     CREATE TABLE todos (
       id INTEGER PRIMARY KEY,
       name TEXT
     )
    ''');
  }

  Future<List<Todo>> getTodos()async{
    Database db = await instance.database;
  
    var todos= await db.query('todos',orderBy: "id");
    print(todos);
    List<Todo> todoList= todos.isNotEmpty ? todos.map((item)=> Todo.fromMap(item)).toList() : [];

    return todoList;
  }

  addTodo(Todo td)async{
    Database db= await instance.database;

   await  db.insert('todos', td.toMap());
  }

  updateTodo(Todo td) async{
    Database db= await instance.database;
    await db.update('todos', td.toMap(), where: "id=${td.id}");
  }

  deleteTodo(int id)async{
     Database db= await instance.database;
     await db.delete('todos',where:'id=$id');
  }



}