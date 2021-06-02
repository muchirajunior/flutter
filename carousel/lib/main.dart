import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List imagelist=[
    'http://innovationclub.buzz/img/afya.jpg',
    'http://innovationclub.buzz/img/future.jpg',
    'http://innovationclub.buzz/img/doctor.jpg',
    'http://innovationclub.buzz/img/code.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Carousel Slider"),
        centerTitle: true,
      ),
      body: Container(

        child: CarouselSlider(
          options: CarouselOptions (
          height: 200,
          initialPage:0,
          autoPlay: true,

          ),
         
          items: imagelist.map((imgUrl) {
            return Builder(
              builder: (BuildContext context ){
                return ClipRRect(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20)
                  ),
                  child: Image.network(
                    imgUrl,
                    fit: BoxFit.fill 
                     )
                       );
              },
            );
          }).toList(),
        ),

      ),
    );
  }
}