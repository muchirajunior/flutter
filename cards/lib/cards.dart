import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  const Cards({ Key? key }) : super(key: key);
  
  
  @override
  Widget build(BuildContext context) {
    var screenHeight= MediaQuery.of(context).size.height;
    var screenWidth= MediaQuery.of(context).size.width;
    var data=[1,2,3,4,5,6,7,8];


    return Scaffold(
     appBar: AppBar(
       title: Text("cards screen"),
     ),
     body:ListView(
       padding: EdgeInsets.all(5),
       children: [

        //card 1
         Card(
           elevation: 10, 
           child: Row(
             children:[
              Container(
                width:screenWidth*0.4,
                height: 135,
                color: Colors.grey,
                child: Icon(Icons.image),
              ),
                Expanded(
                  child: Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text("The  body text of our card   goes  within this space The  body text of our card   goes  within this space The  body text of our card   goes  within this space",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                         ),
                      ),
                    SizedBox(height:20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(onPressed: (){}, 
                          child: Text("Read More >>", style: TextStyle(color: Colors.amber),
                          )),
                      ],
                    )
                    ],
                  ),
                              ),
                ), 
             ]
           ),
         ),

     SizedBox(height: 20,),
      
      //card 2
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //card 2 copy 1
           Card(
             elevation: 10,
             child: Column(
               children: [
                 Container(
                   height: 100,
                   width: screenWidth*0.55,
                   color: Colors.grey,
                   child: Icon(Icons.image),
                 ),

                 Container(
                   padding: EdgeInsets.all(20),
                   child: Text("This is my title text"),),
                 SizedBox(height: 20,),
                 SizedBox(
                   height: 35,
                   width: 100,
                   child: RaisedButton(
                    color: Colors.amber,
                    splashColor: Colors.blue,
                    animationDuration: Duration(seconds:4),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    onPressed: (){},
                    child: Text("Add Item",
                      style: TextStyle(color: Colors.white),
                    ), ),
                 ),
                 SizedBox(height: 10,)
               ],
             ),
           ),
          
          
        ],
      ),



    // card 3
       
    Card(
        elevation: 10,
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.grey,
              child: Icon(Icons.image),
            ),

            Container(
              padding: EdgeInsets.all(20),
              child: Text("This is the blog sample text, This is the blog sample text ",
               maxLines: 3,
              ),),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(onPressed: (){}, 
                  child: Text("Read More >>", style: TextStyle(color: Colors.amber),)),
                ),
              ],
            )
          ],
          ),
        ),


        //card 4

        Card(
          elevation:10,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("  cartegories",  style: TextStyle(color: Colors.amber, fontSize: 22),),
                ],
              ),
            
              GridView.count( 
                padding: EdgeInsets.all(15),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                mainAxisSpacing:10,
                crossAxisSpacing: 10,
                crossAxisCount: 4,
                childAspectRatio: 0.8,
                children: data.map((item) => Column(
                  children: [
                    CircleAvatar(
                      child: Icon(Icons.image, size: 20,),
                    ),
                    Text("type $item")
                  ],
                )).toList(),
                ),
               Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(onPressed: (){}, 
                      child: Text("More >>", style: TextStyle(color: Colors.amber),)),
                    ),
                  ],
                )
            ],
          ),
        ),

        SizedBox(height: 10,),

        // card 5
        Card(
          elevation: 10,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("The Header ", style: TextStyle(color: Colors.amber, fontSize:20)),
                    Icon(Icons.data_saver_off)
                  ],
                ),
              ),
              Container(height: 1, width: double.infinity, color:Colors.grey ),
              ListTile(
                leading: CircleAvatar(child: Icon(Icons.image),),
                title: Text("this is my title"),
                subtitle: Text("here goes the description of the text, this shouldn't be as much long though"),
                // trailing: Text(DateTime.now().year.toString(),),
              ),
            ],
          ),
        )
          


       ],
     )
    );
  }
}