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
     item(
       Icon(Icons.person),
       "WELCOME 1 TO OUR GREAT APPLICATION",
       "Thanks. This was my problem. Actually I had the wrong indentation too. So people should check their indentation and also run flutter clean"
     ),
      item(
        Icon(Icons.person_add),
       "WELCOME 2 TO OUR GREAT APPLICATION",
       "Thanks. This was my problem. Actually I had the wrong indentation too. So people should check their indentation and also run flutter clean"
     ),
      item(
        Icon(Icons.person_remove),
       "WELCOME 3 TO OUR GREAT APPLICATION",
       "Thanks. This was my problem. Actually I had the wrong indentation too. So people should check their indentation and also run flutter clean"
     )
   ];

   List<Alignment> alignments=[ 
      Alignment.centerLeft,
      Alignment.center, 
      Alignment.centerRight
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[900],
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

              SizedBox(height: 20,),

              Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey,
                child: AnimatedAlign(
                  alignment: alignments[index],
                   duration: Duration(seconds: 1),
                   child: Container( height: 2, width: MediaQuery.of(context).size.width*0.33, color: Colors.white,),
                   ),
              ), 

              SizedBox(height: 20,),

              Expanded(child: items[index]),
              
              Container(
                width: MediaQuery.of(context).size.width*0.33 ,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: items.map((item) => Container(
                    width: 30,
                    height: index==items.indexOf(item) ? 10 : 5 ,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                  )
                  ).toList()  ,)
              ), 

              SizedBox(height: 20,),

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