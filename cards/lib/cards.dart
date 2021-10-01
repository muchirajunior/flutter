import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  const Cards({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text("cards screen"),
     ),
     body:ListView(
       padding: EdgeInsets.all(10),
       children: [

         Card(
           elevation: 10,
           
           child: Row(
             children:[
              Container(
                width: 200,
                height: 100,
                color: Colors.grey,
                child: Icon(Icons.image),
              ),
                Container(
                padding: EdgeInsets.all(10),
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                      Text("The  body text of our card  goes  within this space ",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(onPressed: (){}, 
                        child: Text("Read More >>", style: TextStyle(color: Colors.amber),
                        ))
                      ],)
                  ],
                ),
              ), 
             ]
           ),
         ),




       ],
     )
    );
  }
}