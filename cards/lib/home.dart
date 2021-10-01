import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        height: double.infinity,
        width:double.infinity ,
        decoration: BoxDecoration(
          color:Colors.blue,
          image: DecorationImage(image: NetworkImage("https://mfiles.alphacoders.com/724/724214.jpg"), fit: BoxFit.cover)
        ),
       
       child: Column(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: <Widget>[
          SizedBox(height: 30,),
          Text("WELCOME",style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold)),
          Text("OUR HOME CARD DESIGN  ",
           style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 100,),
          SizedBox(
            height: 40,
            width: 200,
            child: RaisedButton(
              color: Colors.amber,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              onPressed: ()=>Navigator.pushNamed(context, '/cards'),
               child: Text("View Cards",
                style: TextStyle(color: Colors.white),
               ), ),
          ),
          
         ]
       ),
       
      ),
      
    );
  }
}