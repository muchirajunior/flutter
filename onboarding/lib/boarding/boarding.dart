import 'package:flutter/material.dart';
import 'items.dart';

class Boarding extends StatefulWidget {
  const Boarding({ Key? key }) : super(key: key);

  @override
  _BoardingState createState() => _BoardingState();
}

class _BoardingState extends State<Boarding> {
  int index=0;

   final items=[
     item1(),
     item2(),
     item3()
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade900,
      body: SafeArea(
        child: Container(
        padding: EdgeInsets.all(10),
        height: double.infinity,
        width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 40,),

              Text("WELCOME", style: TextStyle(color: Colors.white),),  

              // AnimatedAlign(alignment: alignment, duration: duration),      
              
              Expanded(child: items[index] ),


              index== 2 ? FloatingActionButton.extended(
                onPressed: (){
                  setState(() {
                    index=0;
                  });
                },
                label: Text("get started"),
                ):
              Row(
              mainAxisAlignment: MainAxisAlignment.end,
                children: [
                Text("Next",  style: TextStyle(color: Colors.white)),
                SizedBox(width: 10,),
                IconButton(
                  onPressed: ()=>setState((){index++;}),
                  icon: Icon(Icons.arrow_forward, color: Colors.white, size: 20))
                ],
              )

             ],
          ),
        )
        ),
     
    );
  }
}