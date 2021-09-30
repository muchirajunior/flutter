import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);


  @override
  Widget build(BuildContext context) {

    var screenWidth=MediaQuery.of(context).size.width;
    var screenHeight=MediaQuery.of(context).size.height;
    var data=[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18];

    return Scaffold( 
    appBar: AppBar(
      title: Text("user profile"),
    ),   
    
    body: SafeArea(
      child: Stack(
        children: [
          Positioned(
            top: 0, right:0, left: 0,
            child: Container(
              height: 200,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.lightBlue.shade900, Colors.lightBlue])
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("THE GRAND CLUB", style: TextStyle(color: Colors.white,  fontSize: 20),),
                  SizedBox(height: 20,),
                  Text("football game", style: TextStyle(color: Colors.white,  fontSize: 14),),
                ],
              ),
            ),
          ),
    
         Positioned(
           top:90,
           child: Container(
             height: screenHeight*0.7,
             width: screenWidth*0.9,
             padding: EdgeInsets.all(10) ,
             margin: EdgeInsets.all(15),   
             decoration: BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.circular(15),
               boxShadow: [BoxShadow( color: Colors.grey.withOpacity(0.5), spreadRadius: 5, blurRadius: 10)]
             ),
            
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 30,),
                Text("ALEX TELES", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue,  fontSize: 20),),
                  SizedBox(height: 20,),
                  Text("football ", style: TextStyle(color: Colors.blue,  fontSize: 14),),
                  SizedBox(height: 20,),
                  Text("Items"),
                  SizedBox(height:10),
                  new Expanded(
                    child: GridView.count(
                      crossAxisCount: 3,
                      children: data.map((item) => Card(
                        shadowColor: Colors.grey,
                        elevation: 10,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("item $item"),
                            SizedBox(height: 10,),
                            CircleAvatar(
                              backgroundColor: Colors.grey,
                              child: Icon(Icons.photo)),                          
                          ],
                        ),
                      )).toList()
                      ),
                  )
              ],
            ),
            
           )
           ),
    
          Positioned(
              top: 65,
              right: screenWidth*0.35,
              child: CircleAvatar(
                radius: 40,
                child: Icon(Icons.person,
                color: Colors.blue[900],
                size: 60,
                ),
                backgroundColor: Colors.grey,)
              ),
    
        ],
        ),
    )

    );
  }
}