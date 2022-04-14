import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:help_us/Sidebar.dart';
import 'package:help_us/Ticketdetails.dart';
import 'package:help_us/Widgets/Selector_widget.dart';
import 'package:help_us/Widgets/Recent_Ticket.dart';

class Todo extends StatefulWidget {
  const Todo({Key? key}) : super(key: key);

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  int i = 1;
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
          //   style: TextStyle(color: Color(0xFF7861D7),fontSize: 14),
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
                    'To Do List',
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
                    recentTicket(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget recentTicket() {
    switch (monthIndex) {
      case 0:
        return RecentTicket(
          nameOfmonth: '05 JAN',
          ticketLength: 2,
        );
      case 1:
        return RecentTicket(
          nameOfmonth: 'FEB',
          ticketLength: 3,
        );
      case 2:
        return RecentTicket(
          nameOfmonth: 'MAR',
          ticketLength: 4,
        );
      case 3:
        return RecentTicket(
          nameOfmonth: 'APR',
          ticketLength: 5,
        );
      case 4:
        return RecentTicket(
          nameOfmonth: 'MAY',
          ticketLength: 12,
        );
      case 5:
        return RecentTicket(
          nameOfmonth: 'JUN',
          ticketLength: 1,
        );
      case 6:
        return RecentTicket(
          nameOfmonth: 'JUL',
          ticketLength: 2,
        );
      case 7:
        return RecentTicket(
          nameOfmonth: 'AUG',
          ticketLength: 2,
        );
      case 8:
        return RecentTicket(
          nameOfmonth: 'SEP',
          ticketLength: 4,
        );
      case 9:
        return RecentTicket(
          nameOfmonth: 'OCT',
          ticketLength: 5,
        );
      case 10:
        return RecentTicket(
          nameOfmonth: 'NOV',
          ticketLength: 8,
        );
      case 11:
        return RecentTicket(
          nameOfmonth: 'DEC',
          ticketLength: 0,
        );
      default:
        throw Error();
    }
  }
}
