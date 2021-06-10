import 'package:flutter/material.dart';

class AddTask extends StatefulWidget {
  @override
  _AddTaskState createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  var title='';
  var description='';
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SingleChildScrollView(
              child: Column(
          children: <Widget>[
            Text(
              "Add Todo Task",
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height:10),
            TextFormField(
              maxLines: 1,
              validator: (title){
                if(title==""){
                     return "title cannot be empty";
                }
                 else{
                   
                   return "";
                }
              },
              decoration: InputDecoration(
                labelText: "title"
              ),
            ),

            SizedBox(height:10),
            TextFormField(
              maxLines: 3,

              validator: (description){
                if(description==""){
                     return "description cannot be empty";
                }
                else{

                   return "";
                }
               
              },
          
              decoration: InputDecoration(
                labelText: "description"
              ),
            ),
             SizedBox(height:10),
             RaisedButton(
               onPressed: (){
                 Navigator.of(context).pop();
               },
               color: Colors.amber,
               child: Text("save"),
               )
          ],
        ),
      ),
      
    );
  }
}