import 'dart:convert';
import 'dart:io';
import 'package:dart_app/model/shape.model.dart';
import 'package:dart_app/model/circle.model.dart';
import 'package:dart_app/model/point.model.dart';
import 'package:dart_app/model/rectangle.model.dart';

class GeoMetricDesign {
  List<Shape> shapes = [];
  Shape add(Shape s) {
    shapes.add(s);
    return s;
  }


  void show() {
    for (Shape s in shapes) {
      if (s is Cirlce) {
        print("******************** Circle ********************");
        print("Radius : ${s.getRaduis()}");
      } else if (s is Rectangle) {
        print("******************** Rectangle    ********************");
        print("Width : ${s.getWidth()}");
        print("Height : ${s.getHeight()}");
      }
      print(s.toJson());
      print("Perimeter : ${s.getPerimieter()}");
      print("Area : ${s.getArea()}");
    }
  }

  String toJson() {
    JsonEncoder jsonEncoder = const JsonEncoder.withIndent(" ");

    return jsonEncoder.convert({"shapes": shapes});
    /* return {

      "shapes" : shapes
    };*/
  }

  void save(String fileName)
  {
    File file = File(fileName);
    file.writeAsStringSync(toJson());
  }

  GeoMetricDesign.fromFile(String fileName){


    File file = File(fileName);
    String data = file.readAsStringSync();
    Map<String,dynamic> jsonData = json.decode(data);
    shapes = (jsonData['shapes'] as List).map((e) {


      if(e['type']=='Circle'){
       double raduis = e['radius'];
       Point center = Point.fromJson(e['center']);
       return Cirlce(p1: center, p2: Point(x : center.x+raduis,y : center.y));
      }else{


        double w = e['width'];
        double h = e['height'];

        Point p1 = Point(x : e['x'],y : e['y']);

        Point p2 = Point(x : p1.x+w,y : p1.y+h);

        return Rectangle(p1: p1, p2: p2);

      }
    }).toList();
  }
}
