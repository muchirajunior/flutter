import 'package:flutter/material.dart';
import 'package:todo_app/todo.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoPage extends StatefulWidget {
  @override
  _TodoPageState createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  @override
  Widget build(BuildContext context) {
    List tasks=[
      Todo(id: "1",title: "task one",description: "-do task one \n -task one todo",created: DateTime.now(),isdone: false),
      Todo(id: "2",title: "task two",description: "do task two",created: DateTime.now(),isdone: true),
      Todo(id: "3",title: "task three",description: "do task three",created: DateTime.now(),isdone: false),
      Todo(id: "4",title: "task four",created: DateTime.now(),isdone: true)
    ];

    return ListView.builder(
      itemCount:tasks.length,

      itemBuilder: (context,index){
        var task=tasks[index];
        return   Card(
                  child: Slidable(
            actionPane: SlidableDrawerActionPane(),
            key: Key(task.id),
            actions: [
              IconSlideAction(
                  icon: Icons.edit,
                  color: Colors.amber,
                  caption: "Edit",
                  onTap: () {}),
            ],
            secondaryActions: [
              IconSlideAction(
                  icon: Icons.delete,
                  color: Colors.red,
                  caption: "Delete",
                  onTap: () {})
            ],
            child: Container(
              child: Row(children: <Widget>[
                Checkbox(
                  checkColor: Colors.amber,
                  value: task.isdone,
                  onChanged: (_) {},
                ),
                Expanded(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                      Text(task.title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.red
                          )),
                      Text(task.description!=null ? task.description : "" )
                    ]))
              ]),
            )),
        );
      }

         
    );
  }
}
