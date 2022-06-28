import 'package:dart_app/model/shape.model.dart';
import 'package:dart_app/model/point.model.dart';

class Rectangle extends Shape {
  Rectangle({required Point p1, required Point p2}) : super(p1 : p1,p2 : p2);

  @override
  double getArea() {
    // TODO: implement getArea
    return getHeight()*getWidth();
  }


  double getWidth(){

    return (p2.x-p1.x).abs();
  }

  double getHeight(){

    return (p2.y-p1.y).abs();
  }
  @override
  double getPerimieter() {
    // TODO: implement getPerimieter
    return 2*(getWidth()+getHeight());
  }

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    return {
      'type' : "rectangle",
      'x' : p1.x,
      'y' : p1.y,
      'width' : getWidth(),
      'height' : getHeight()
    };
  }

}