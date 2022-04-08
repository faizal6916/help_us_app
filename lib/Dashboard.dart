import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:help_us/Sidebar.dart';
import 'package:help_us/Widgets/Selector_widget.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:help_us/Widgets/Piechart_section_data.dart';
import 'package:help_us/Widgets/Department_section_data.dart';
import 'package:help_us/Widgets/Ticket_status_widget.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  String firstDpt = 'Administration';
  int deptIndex = 0;
  final double percent = 0.4;
  final double rejectPercent = 0.2;
  final List<String> deptmnts = [
    'Administration',
    'It',
    'Transport',
    'Accounts'
  ];
  int monthIndex = 0;
  String month = 'January';
  final List<String> months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        bool willLeave = false;
        await showDialog(
            context: context,
            builder: (_) => AlertDialog(
                  title: Text('Are you sure you want to leave'),
                  actions: [
                    ElevatedButton(
                        onPressed: () {
                          willLeave = true;
                          SystemNavigator.pop();
                        },
                        child: Text('yes')),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('no')),
                  ],
                ));
        return willLeave;
      },
      child: Scaffold(
        key: _scaffoldKey,
        drawer: Sidebar(),
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Color(0xFF2662F0),
            ),
            onPressed: () {
              _scaffoldKey.currentState!.openDrawer();
            },
          ),
          backgroundColor: Color(0xFFE5E5E5),
          elevation: 0,
          title: Text(
            'Menu',
            style: TextStyle(color: Color(0xFF2662F0)),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(20),
            child: Container(
              margin: EdgeInsets.only(left: 12),
              child: Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        //Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.home,
                        color: Color(0xFF414D55),
                        size: 30,
                      )),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Home',
                    style: TextStyle(
                        color: Color(0xFF414D55),
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          actions: [
            Container(
              child: Row(
                children: [
                  Icon(Icons.notifications),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20,
                      child: CircleAvatar(
                        radius: 18,
                      )),
                  Container(
                    width: 15,
                    height: 10,
                  )
                ],
              ),
            )
          ],
        ),
        backgroundColor: Color(0xFFE5E5E5),
        body: SafeArea(
          child: ListView(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.fromLTRB(20, 10, 20, 20),
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 175,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(20, 46, 110, 0.1),
                            offset: Offset(0, 1.0),
                            blurRadius: 8,
                          )
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Tickets',
                                style: TextStyle(
                                    color: Color(0xFF414D55),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Nims DXB',
                                style: TextStyle(
                                    color: Color(0xFF2395FF),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          LinearPercentIndicator(
                            width: MediaQuery.of(context).size.width - 80,
                            lineHeight: 8,
                            percent: 0.8,
                            backgroundColor: Color(0xFFE4EAF0),
                            progressColor: Color(0xFF9A9ADC),
                            padding: EdgeInsets.zero,
                            barRadius: Radius.circular(5),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    width: 45,
                                    height: 15,
                                    decoration: BoxDecoration(
                                        color: Color(0xFF2395FF),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Center(
                                        child: Text(
                                      'Total',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    )),
                                  ),
                                  Text(
                                    '415',
                                    style: TextStyle(
                                        color: Color(0xFF1B344B),
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Color(0xFF9A9ADC),
                                        radius: 5,
                                      ),
                                      SizedBox(
                                        width: 2,
                                      ),
                                      Text(
                                        'Resolved',
                                        style: TextStyle(
                                            color: Color(0xFF6A86A0),
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    '415',
                                    style: TextStyle(
                                        color: Color(0xFF1B344B),
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Color(0xFFA7D2E0),
                                        radius: 5,
                                      ),
                                      SizedBox(
                                        width: 2,
                                      ),
                                      Text(
                                        'Open',
                                        style: TextStyle(
                                            color: Color(0xFF6A86A0),
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    '415',
                                    style: TextStyle(
                                        color: Color(0xFF1B344B),
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Color(0xFFFF9493),
                                        radius: 5,
                                      ),
                                      SizedBox(
                                        width: 2,
                                      ),
                                      Text(
                                        'Escalated',
                                        style: TextStyle(
                                            color: Color(0xFF6A86A0),
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    '415',
                                    style: TextStyle(
                                        color: Color(0xFF1B344B),
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/createticket');
                            },
                            child: Container(
                              width: 100,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Color(0xFF2395FF),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image(
                                      image: AssetImage(
                                          'assets/images/Create.png')),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Create',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/viewticket');
                            },
                            child: Container(
                              width: 80,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Color(0xFF7861D7),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image(
                                      image:
                                          AssetImage('assets/images/View.png')),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'View',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/todolist');
                            },
                            child: Container(
                              width: 110,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Color(0xFF34D1BF),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image(
                                      image: AssetImage(
                                          'assets/images/Todoicon.png')),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'To-Do-List',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 320,
                      padding: EdgeInsets.fromLTRB(18, 20, 34, 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(20, 46, 110, 0.1),
                            offset: Offset(0, 1.0),
                            blurRadius: 8,
                          )
                        ],
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Departments',
                            style: TextStyle(
                                color: Color(0xFF414D55),
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                              width: MediaQuery.of(context).size.width,
                              height: 60,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: SelectorWidget(
                                values: deptmnts,
                                onChangedValue: (dept) {
                                  setState(() {
                                    this.firstDpt = dept;
                                  });
                                },
                                onIndexChange: (index) {
                                  setState(() {
                                    this.deptIndex = index;
                                    //print(deptIndex);
                                  });
                                },
                              )),
                          SizedBox(
                            height: 20,
                          ),
                          deptSection(),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 350,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(20, 46, 110, 0.1),
                            offset: Offset(0, 1.0),
                            blurRadius: 8,
                          )
                        ],
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Ticket Status',
                            style: TextStyle(
                                color: Color(0xFF414D55),
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                              width: MediaQuery.of(context).size.width,
                              height: 60,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: SelectorWidget(
                                values: months,
                                onChangedValue: (month) {
                                  setState(() {
                                    this.month = month;
                                  });
                                },
                                onIndexChange: (index) {
                                  setState(() {
                                    this.monthIndex = index;
                                    //print(monthIndex);
                                  });
                                },
                              )),
                          SizedBox(
                            height: 15,
                          ),
                          statusBars(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget deptSection() {
    switch (deptIndex) {
      case 0:
        return DepartmentData(
          totalTicket: '30',
          pendingTcts: 100,
        );
      case 1:
        return DepartmentData(
          totalTicket: '3',
          pendingTcts: 140,
        );
      case 2:
        return DepartmentData(
          totalTicket: '344',
          pendingTcts: 120,
        );
      case 3:
        return DepartmentData(
          totalTicket: '374',
          pendingTcts: 100,
        );
      default:
        return DepartmentData(
          totalTicket: '000',
          pendingTcts: 000,
        );
    }
  }

  Widget statusBars() {
    return Container(
      child: Column(
        children: [
          TicketStatus(
            color: Color(0xFF04E762),
            status: 'Resolved',
            nos: 500,
            total: 1000,
          ),
          SizedBox(
            height: 10,
          ),
          TicketStatus(
            color: Color(0xFFFF715B),
            status: 'Rejected',
            nos: 200,
            total: 1000,
          ),
          SizedBox(
            height: 10,
          ),
          TicketStatus(
            color: Color(0xFF0496FF),
            status: 'In Progress',
            nos: 0,
            total: 1000,
          ),
          SizedBox(
            height: 10,
          ),
          TicketStatus(
            color: Color(0xFF6665DD),
            status: 'Created',
            nos: 12,
            total: 1000,
          ),
          SizedBox(
            height: 10,
          ),
          TicketStatus(
            color: Color(0xFF34D1BF),
            status: 'Reopen',
            nos: 52,
            total: 1000,
          )
        ],
      ),
    );
  }
}
