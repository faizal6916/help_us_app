import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:help_us/Widgets/Piechart_section_data.dart';

class DepartmentData extends StatefulWidget {
  final String? totalTicket;
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
            children: [
              Positioned(
                top: 50,
                left: 28,
                child: Column(
                  children: [
                    Text(
                      widget.totalTicket.toString(),
                      style: TextStyle(
                          color: Color(0xFF414D55),
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    ),
                    Text(
                      'Total Tickets',
                      style: TextStyle(
                          color: Color(0xFF414D55),
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 0),
                child: SizedBox(
                  //width: 200,
                  height: 150,
                  child: PieChart(PieChartData(
                    sections: getSections(),
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
}
