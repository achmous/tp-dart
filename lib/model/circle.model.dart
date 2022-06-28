import 'dart:math';

import 'package:dart_app/model/shape.model.dart';

class Cirlce extends Shape {
  Cirlce({required p1, required p2}) : super(p1: p1,p2:p2);

  @override
  double getArea() {
    // TODO: implement getArea

    double r = getRaduis();

    return pi*r*r;
  }


   double getRaduis(){

     return p1.distanceTo(p2);

   }
  @override
  double getPerimieter() {
    // TODO: implement getPerimieter
   return 2*pi*getRaduis();
  }

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    return {
      'type' : 'Circle',
      'center' : p1,
      'radius' : getRaduis()
    };
  }




}