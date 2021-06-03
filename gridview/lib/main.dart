import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Item{
  var image;
  var text;
  
  Item({this.image,this.text});
}

class Home extends StatelessWidget {
  List items=[
    Item(image: "images/city.jpeg",text: "text one"),
    Item(image: "images/city.jpg",text: "text two"),
    Item(image: "images/dawn.jpeg",text: "text three"),
    Item(image: "images/garden.jpeg",text: "text four"),
    Item(image: "images/nature.png",text: "text five"),
     Item(image: "images/dawn.jpeg",text: "text three"),
    Item(image: "images/city.jpg",text: "text six")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView"),
        centerTitle: true,
      ),
    body: Container(
      child: GridView.count(
        crossAxisCount: 2,
        children: items.map((item)=>Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(item.image),
              SizedBox(height:10),
              Text(item.text)
            ],
          ),
        )).toList()
      ),
    ),
      
    );
  }
}