import 'package:dart_app/model/geometric.model.dart';

import 'package:dart_app/model/rectangle.model.dart';
import 'package:dart_app/model/circle.model.dart';

import 'package:dart_app/model/point.model.dart';

void main(){


  GeoMetricDesign design = GeoMetricDesign();
  design.add(Cirlce(p1 : Point(x : 22,y:33),p2 : Point(x : 22,y:33)));
  design.add(Cirlce(p1 : Point(x : 43,y:53),p2 : Point(x : 53,y:77)));
  design.add(Rectangle(p1 : Point(x : 11,y:33),p2 : Point(x : 33,y:44)));
  design.show();

print("**************");
  print(design.toJson());
design.save("desig.json");


}