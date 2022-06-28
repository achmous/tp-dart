

import 'dart:convert';

import './model/point.model.dart';
void main(){

 Point p = Point(x:10,y:70);

 print(p.toString());
 Point p2 = Point.fromArray([11,70]);

 print(p.distanceTo(p2).toStringAsFixed(2));
 
 print(p.toJson());
 
 JsonEncoder encoder = JsonEncoder.withIndent("    ");
 print(encoder.convert(p.toJson()));

 Point p3 = Point.fromJson({'x' : 12, 'y' : 30});

 print(encoder.convert(p3.toJson()));

 Map<String, dynamic> data = new Map<String, dynamic>();



 data['y'] = 5;
 data['x'] = 5;

 Point p4 = Point.fromJson(data);
 print(encoder.convert(p4.toJson()));



}
