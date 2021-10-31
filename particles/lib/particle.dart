import 'package:flutter/material.dart';

class PVector{
  double? x,y;

  PVector(this.x, this.y);
}

class Particle{
  PVector position=PVector(0.0, 0.0);
  PVector velocity=PVector(0.0, 0.0);
  double? mass=10.0;  //per kg
  double? radius=10/100; //1m ==100px
  Color color=Colors.green;
  double? area=0.0314; //pi
  double? jumpFactor = -0.6;
}