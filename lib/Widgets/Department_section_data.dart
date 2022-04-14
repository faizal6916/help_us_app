import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:google_fonts/google_fonts.dart';

class DepartmentData extends StatefulWidget {
  final int? totalTicket;
  final int? pendingTcts;
  const DepartmentData({
    Key? key,
    this.totalTicket,
    this.pendingTcts,
  }) : super(key: key);

  @override
  State<DepartmentData> createState() => _DepartmentDataState();
}

class _DepartmentDataState extends State<DepartmentData> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Color(0xFFFF715B),
                      radius: 8,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 4,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.pendingTcts.toString(),
                          style: TextStyle(
                              color: Color(0xFF333333),
                              fontWeight: FontWeight.w500,
                              fontSize: 14),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'PENDING',
                          style: TextStyle(
                              color: Color(0xFF414D55),
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Color(0xFF29E7CD),
                      radius: 8,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 4,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '112',
                          style: TextStyle(
                              color: Color(0xFF333333),
                              fontWeight: FontWeight.w500,
                              fontSize: 14),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'RESOLVED',
                          style: TextStyle(
                              color: Color(0xFF414D55),
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Color(0xFF6665DD),
                      radius: 8,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 4,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '112',
                          style: TextStyle(
                              color: Color(0xFF333333),
                              fontWeight: FontWeight.w500,
                              fontSize: 14),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'ESCALATED',
                          style: TextStyle(
                              color: Color(0xFF414D55),
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                child: Column(
                  children: [
                    Text(widget.totalTicket.toString(),
                        style: GoogleFonts.rubik(
                            color: Color(0xFF414D55),
                            fontWeight: FontWeight.w500,
                            fontSize: 20)),
                    Text('Total Tickets',
                        style: GoogleFonts.roboto(
                            color: Color(0xFF414D55),
                            fontWeight: FontWeight.w400,
                            fontSize: 14)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 0),
                child: SizedBox(
                  //width: 200,
                  height: 150,
                  child: PieChart(PieChartData(
                    sections: showingSection(),
                    centerSpaceRadius: 45,
                  )),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  double pendingPercIndicator() {
    final pendingNos = widget.pendingTcts;
    final totalNos = widget.totalTicket;
    final pendPerc = (pendingNos! / totalNos! * 100);
    return pendPerc;
  }

  List<PieChartSectionData> showingSection() {
    return List.generate(3, (index) {
      switch (index) {
        case 0:
          return PieChartSectionData(
              color: Color(0xFFFF715B),
              value: pendingPercIndicator(),
              title: '${pendingPercIndicator().floor()}%',
              titleStyle: TextStyle(color: Colors.white));
        case 1:
          return PieChartSectionData(
            color: Color(0xFF29E7CD),
            value: 20,
            title: '',
          );
        case 2:
          return PieChartSectionData(
            color: Color(0xFF6665DD),
            value: 20,
            title: '',
          );
        default:
          throw Error();
      }
    });
  }
}
