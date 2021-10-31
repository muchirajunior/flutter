import 'dart:async';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:particles/particle.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final GlobalKey _boxKey=GlobalKey();
  int _counter=0;
  List<Color> colors=[Colors.amber, Colors.amber.shade800, Colors.amber.shade900, Colors.red.shade800];
  dynamic counterText={"count":1, "color":Colors.amber};
  Rect boxSize=Rect.zero;
  final Random random=Random();
  List<Particle> particles=[];

  final double gravity=9.81,drag=0.47, airDensity=1.1644;

  final double fps=1/24;
  Timer? timer;

  burstParticle(){
   
   if (particles.length>200){
     particles.removeRange(0,100);
   }

   Color color=colors[random.nextInt(colors.length)];
    counterText['count']+=1;
    counterText['color']=color;

    int count=random.nextInt(25).clamp(7, 25);

    for (int i=0; i<count; i++){
      Particle p=new Particle();
      p.position=PVector(boxSize.center.dx, boxSize.center.dy);
      double randomX=random.nextDouble()*4.0;
      if(i%2==0){
        randomX=-randomX;
      }
      double randomY=random.nextDouble() * -8.0;
      p.velocity=PVector(randomX, randomY);
      p.radius=(random.nextDouble()*10.0).clamp(2.0, 10.0);
      p.color=color;
      particles.add(p);
    }
  }

  frameBuilder(dynamic timer){
    particles.forEach((pt) {
      double dragForceX=-0.5 * airDensity * pow(pt.velocity.x!.toInt(), 2) * drag * pt.area!.truncate();
      double dragForceY=-0.5 * airDensity * pow(pt.velocity.y!.toInt(), 2) * drag * pt.area!.truncate();
      
      dragForceX = dragForceX.isFinite ? 0 : dragForceX;
      dragForceY = dragForceY.isFinite ? 0 : dragForceY;

      double accX=dragForceX/pt.mass!.toInt();
      double accY=dragForceY/pt.mass!.toInt()*gravity;

      pt.velocity.x = pt.velocity.x! +(accX*fps);
      pt.velocity.y = pt.velocity.y! + ( accY*fps) ;

      pt.position.x =pt.position.x! + (pt.velocity.x! * fps) *50;
       pt.position.y =pt.position.y! + (pt.velocity.y! * fps) * 50;

      boxCollision(pt);

     });

    setState(() {});
  }

  boxCollision(Particle pt) {
    // Collision with Right of the Box Wall
    if (pt.position.x! > boxSize.width - pt.radius!.toDouble()) {
      pt.velocity.x =pt.velocity.x! * pt.jumpFactor!.toDouble();
      pt.position.x = boxSize.width - pt.radius!.toDouble();
    }
    // Collision with Bottom of the Box Wall
    if (pt.position.y! > boxSize.height - pt.radius!.toDouble()) {
      pt.velocity.y =pt.velocity.y! * pt.jumpFactor!.toDouble();
      pt.position.y = boxSize.height - pt.radius!.toDouble();
    }
    // Collision with Left of the Box Wall
    if (pt.position.x! < pt.radius!.toDouble()) {
      pt.velocity.x =pt.velocity.x! * pt.jumpFactor!.toDouble();
      pt.position.x = pt.radius;
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      Size size= _boxKey.currentContext!.size as Size;
      boxSize=Rect.fromLTRB(0, 0, size.width, size.height);
      // print(boxSize);
     });

     timer=Timer.periodic(Duration(milliseconds: (fps*1000).floor()), frameBuilder);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    timer!.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("particles counter", style: TextStyle(color: Colors.white),),
      ),

      body: Container(
        width: double.infinity,
        key:_boxKey,
        child: Stack(
          children : <Widget>[ 
            Center(
            child:Text("${counterText['count']}",
             style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: counterText['color']), 
            ),
              ),

              ...particles.map((pt) => Positioned(
                top: pt.position.x,
                left: pt.position.y,
                child: Container(
                  width: pt.radius!*2,
                  height: pt.radius!*2,
                  decoration: BoxDecoration(shape: BoxShape.circle,),
                  child: Center(child: Icon(Icons.favorite, color: pt.color))
                )
                ,)).toList()
          ]
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: ()=>burstParticle(),
        child: Icon(Icons.add, color: Colors.white,),
      ),
      
    );
  }
}