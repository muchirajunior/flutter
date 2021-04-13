import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
     home: Home()
      ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MUCHIRA JUNIOR"),
        centerTitle: true,
        backgroundColor: Colors.red[600],
    ),
    
      body: Center(
        child: Text("Hello from Muchira Junior",
              style: TextStyle(
                color: Colors.blue[700],
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                ),
         ),
        // child: Image.asset("assets/image.jpeg"),
      ),

        

      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Text("add"),
        ),

    );
  }
}