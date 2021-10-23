import 'package:flutter/material.dart';

class SearchBars extends StatelessWidget {
   
   

  @override
  Widget build(BuildContext context) {
    final screen=MediaQuery.of(context).size;

    return Scaffold(
     
     body: Container(
       height: double.infinity,
       width: double.infinity,
       decoration: BoxDecoration(
         gradient: LinearGradient(
           begin: Alignment.topCenter,
           end: Alignment.bottomCenter,
           colors: [ 
             Colors.grey.shade800,
             Colors.grey.shade600
            ]
         )
       ),

       child: Center(
         child: ListView(
           padding: EdgeInsets.all(20),
           children: <Widget>[
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text("ideas for ", style: TextStyle(color: Colors.white, fontSize: 20), ),
                 Text(" Search Bar", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20), ),
               ],
             ),
            SizedBox(height: 20,),
             Container(
               padding: EdgeInsets.all(10),
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(10)
               ),
               child: TextField(
                 decoration: InputDecoration(
                   hintText: "   Type keyword ...",
                   suffixIcon: Icon(Icons.search),
                   border: InputBorder.none
                 ),
               ),
             ),

             SizedBox(height: 20,),
             Row(
               children: [
                 Container(
                   width: screen.width*0.75,
                   padding: EdgeInsets.all(10),
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(10)
                   ),
                   child: TextField(
                     decoration: InputDecoration(
                       hintText: "   Type keyword ...",
                       border: InputBorder.none
                     ),
                   ),
                 ),

                SizedBox(width: 20,),

                 Container(
                   padding:EdgeInsets.all(10),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       gradient: LinearGradient(
                         begin: Alignment.centerLeft,
                         end: Alignment.centerRight,
                         colors:[
                           Colors.indigo.shade500,
                          Colors.purple.shade300
                         ]
                       )
                     ),
                     child: IconButton(
                       icon: Icon(Icons.search,color: Colors.white, ),
                       onPressed: (){},
                     ),
                   )
               ],
             ),

             SizedBox(height: 20,),
             Container(
               padding: EdgeInsets.all(10),
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(10)
               ),
               child: TextField(
                 decoration: InputDecoration(
                   hintText: "   Type keyword ...",
                   prefixIcon: Icon(Icons.search),
                   suffixIcon: Icon(Icons.more_vert),
                   border: InputBorder.none
                 ),
               ),
             ),

            SizedBox(height: 20,),
             Container(
               padding: EdgeInsets.all(10),
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(10)
               ),
               child: TextField(
                 decoration: InputDecoration(
                   hintText: "   Type keyword ...",
                   prefixIcon: Icon(Icons.search),
                   suffixIcon: Icon(Icons.mic),
                   suffix: Container(width: 2, height:20, color:Colors.grey),
                   border: InputBorder.none
                 ),
               ),
             ),

           
            SizedBox(height: 20,),
             Container(
               padding: EdgeInsets.all(10),
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10)
               ),
               child: TextField(
                 decoration: InputDecoration(
                   hintText: "   Type keyword ...",
                   suffixIcon: Icon(Icons.search, color: Colors.white ),
                   hintStyle: TextStyle(color: Colors.white)
                   
                 ),
               ),
             ),


             SizedBox(height: 20,),
             Row(
               children: [
                 Container(
                   width: screen.width*0.8,
                   height: 70,
                   padding: EdgeInsets.all(10),
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.only(
                       topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                     )
                   ),
                   child: TextField(
                     decoration: InputDecoration(
                       hintText: "   Type keyword ...",
                       border: InputBorder.none
                     ),
                   ),
                 ),
                 Container(
                   height: 70,
                   padding:EdgeInsets.all(10),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.only(
                         topRight: Radius.circular(10),
                         bottomRight: Radius.circular(10),
                       ),
                       gradient: LinearGradient(
                         begin: Alignment.centerLeft,
                         end: Alignment.centerRight,
                         colors:[
                           Colors.indigo.shade500,
                          Colors.purple.shade300
                         ]
                       )
                     ),
                     child: IconButton(
                       icon: Icon(Icons.search,color: Colors.white, ),
                       onPressed: (){},
                     ),
                   )
               ],
             ),

            SizedBox(height: 20,),
            Container(
               padding: EdgeInsets.all(10),
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(10)
               ),
               child: Center(
                 child: Container(
                   width: screen.width*0.5,
                   child: TextField(
                     decoration: InputDecoration(
                       hintText: "   Type keyword ...",
                       prefixIcon: Icon(Icons.search),
                       
                       border: InputBorder.none
                     ),
                   ),
                 ),
               ),
             ),
             

           ],
         ),
       ),
     ),

    );
  }
}