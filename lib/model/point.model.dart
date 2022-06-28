import 'dart:math';

class Point{
  final double x;
  final double y;

  Point({required this.x,required this.y});
  Point.fromArray(List<double> data):
        x = data[0],y=data[1];


  Point.fromJson(Map<String, dynamic> data):
        x = (data['x'] as num).toDouble(),y=(data['y'] as num).toDouble();


  double distanceTo(Point p)
  {


    double w = this.x - p.x;
    double h = this.y - p.y;

    return sqrt(pow(w, 2)+pow(h, 2));



  }

  Map<String, dynamic> toJson(){

    return { 'x' : x, 'y' : y};
  }

 @override
  String toString() {
    // TODO: implement toString
    return "Point($x,$y)";
  }
}