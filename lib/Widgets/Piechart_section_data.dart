import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:help_us/Data/Piechartdata.dart';

List<PieChartSectionData> getSections() => PieData.data
    .asMap()
    .map<int, PieChartSectionData>((index, data) {
      final value = PieChartSectionData(
        color: data.color,
        value: data.percent,
        title: '',
        // titleStyle: TextStyle(
        //   fontSize: 12,
        //   fontWeight: FontWeight.w400,
        //   color: Colors.white,
        // )
      );
      return MapEntry(index, value);
    })
    .values
    .toList();
