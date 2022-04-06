import 'package:flutter/material.dart';
class PieData {
  static List<Data> data = [

    Data(name: 'pending',percent: 40,color: Color(0xFFFF715B)),
    Data(name: 'resolved',percent: 30,color: Color(0xFF29E7CD)),
    Data(name: 'escalated',percent: 30,color: Color(0xFF6665DD)),

  ];
}

class Data{
  final String? name;

  final double? percent;

  final Color? color;

  Data({this.name,this.percent,this.color});
}