import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:todo_app/todo.dart';

class FirebaseApi{
  Future <String> createTodo(Todo todo) async{
    final docTodo=FirebaseFirestore.instance.collection('todo').doc();
    todo.id=docTodo.id;
    await docTodo.set(todo.toJson());

    return docTodo.id;
  }
}



