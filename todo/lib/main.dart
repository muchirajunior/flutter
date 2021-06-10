import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

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
   String task="";

  createtodo(){
    DocumentReference documentReference= FirebaseFirestore.instance.collection("Todos").doc(task);

    Map<String,dynamic> todos={
      "title":task
    };

    documentReference.set(todos).whenComplete(() => print("added task"));
  }
  
 
  @override
  Widget build(BuildContext context) {

        return Scaffold(
      appBar: AppBar(
        title: Text("muchira todos"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection("Todos").snapshots(),
        builder: (context, snapshot){

          if (snapshot.hasData){
          return ListView.builder(
          itemCount:snapshot.data!.docs.length,
          itemBuilder: (context, index) {
            DocumentSnapshot documentSnapshot=snapshot.data!.docs[index];
            return Card(
              child: ListTile(
                title: Text(documentSnapshot["title"]),
                trailing: IconButton(
                  onPressed: (){
                    createtodo();                
                  },
                  icon: Icon(Icons.delete),
                  color: Colors.amber,
                  
                  ),
              ),
            );
          });

          }
          else if(snapshot.hasError){
             return Center(child:Text("Error Loading data!!!!"));
          }
          else{
            return Center(child:Text("Loading data...."));
          }
          
         
        },
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Text("Add todo"),
                content: SingleChildScrollView(
                                  child: Column(children: <Widget>[
                    TextFormField(
                      maxLines: 1,
                      onChanged: (var value){task=value;},
                      decoration: InputDecoration(labelText: "title"),
                    ),
                    SizedBox(height: 10),
                    RaisedButton(
                      onPressed: () {
                       createtodo();
                        Navigator.of(context).pop();
                      },
                      color: Colors.amber,
                      child: Text("save"),
                    )
                  ]),
                ),
              ),
            );
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.amber),
    );
  }
}
