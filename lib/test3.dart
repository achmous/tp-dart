import 'package:dart_app/model/circle.model.dart';
import 'package:dart_app/model/point.model.dart';
import 'package:dart_app/model/rectangle.model.dart';

void main() {
  Cirlce shape = Cirlce(p1: Point(x: 10, y: 70), p2: Point(x: 10, y: 70));
  print(shape.toJson());

  print(shape.getPerimieter());

  print(shape.getArea());

  if (shape is Cirlce) {
    print(shape.getRaduis());
  }

  print("_______________________________");

  Rectangle r = Rectangle(p1: Point(x: 43, y: 76), p2: Point(x: 43, y: 88));

  print(r.toJson());
  print(r.getHeight());
  print(r.getWidth());

  print(r.getArea());
  print(r.getPerimieter());
}
