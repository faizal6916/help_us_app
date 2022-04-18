import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:help_us/Sidebar.dart';
import 'package:help_us/Widgets/Selector_widget.dart';
import 'package:help_us/Widgets/Ticket_view.dart';

class ViewTicket extends StatefulWidget {
  const ViewTicket({Key? key}) : super(key: key);

  @override
  State<ViewTicket> createState() => _ViewTicketState();
}

class _ViewTicketState extends State<ViewTicket> with TickerProviderStateMixin {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  int i = 77;
  bool isClicked = false;
  TabController? _tabController;
  List<String> navBarItem = [
    'Opened',
    'Assigned (12)',
    'My Actioned (15)',
    'Closed'
  ];
  String month = 'January';
  int monthIndex = 0;
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
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        key: _scaffoldKey,
        drawer: Sidebar(),
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                _scaffoldKey.currentState!.openDrawer();
              },
              icon: Icon(
                Icons.menu,
                size: 28,
                color: Color(0xFF7861D7),
              )),
          backgroundColor: Color(0xFFF1F5F8),
          elevation: 0,
          // title: Text(
          //   'Menu',
          //   style: TextStyle(color: Color(0xFF7F6AD8),fontSize: 14),
          // ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(30),
            child: Container(
              margin: EdgeInsets.only(left: 12),
              child: Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/dashboard');
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Color(0xFF414D55),
                        size: 30,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'View Tickets',
                    style: GoogleFonts.rubik(
                        color: Color(0xFF414D55),
                        fontSize: 28,
                        fontWeight: FontWeight.w500),
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
        //backgroundColor: Color(0xFFE5E5E5),
        body: SafeArea(
          child: ListView(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.fromLTRB(20, 10, 20, 20),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 48,
                      padding: EdgeInsets.only(left: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          errorBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                          hintText: 'Ticket No',
                          icon: Icon(Icons.search),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        height: 60,
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 5),
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
                    Container(
                      height: 40,
                      child: TabBar(
                        isScrollable: true,
                        labelColor: Color(0xFF7F6AD8),
                        labelStyle: GoogleFonts.roboto(fontWeight: FontWeight.w400,fontSize: 16),
                        indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white),
                        indicatorColor: Colors.transparent,
                        unselectedLabelColor:
                            Color(0xFF414D55).withOpacity(0.36),
                        controller: _tabController,
                        tabs: [
                          Tab(
                            text: 'Opened',
                          ),
                          Tab(
                            text: 'Assigned (12)',
                          ),
                          Tab(
                            text: 'My actioned (12)',
                          ),
                          Tab(
                            text: 'Closed',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    monthlyTickets(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget monthlyTickets() {
    switch (monthIndex) {
      case 0:
        return MonthlyTicket(
          monthName: '05 JAN',
        );
      case 1:
        return MonthlyTicket(
          monthName: '05 FEB',
        );
      case 2:
        return MonthlyTicket(
          monthName: '05 MAR',
        );
      case 3:
        return MonthlyTicket(
          monthName: '05 APR',
        );
      case 4:
        return MonthlyTicket(
          monthName: '05 MAY',
        );
      case 5:
        return MonthlyTicket(
          monthName: '05 JUN',
        );
      case 6:
        return MonthlyTicket(
          monthName: '05 JUL',
        );
      case 7:
        return MonthlyTicket(
          monthName: '05 AUG',
        );
      case 8:
        return MonthlyTicket(
          monthName: '05 SEP',
        );
      case 9:
        return MonthlyTicket(
          monthName: '05 OCT',
        );
      case 10:
        return MonthlyTicket(
          monthName: '05 NOV',
        );
      case 11:
        return MonthlyTicket(
          monthName: '05 DEC',
        );
      default:
        return MonthlyTicket(
          monthName: 'no',
        );
    }
  }
}
