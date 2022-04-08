import 'package:flutter/material.dart';
import 'package:help_us/Sidebar.dart';

class TicketHistory extends StatefulWidget {
  const TicketHistory({Key? key}) : super(key: key);

  @override
  State<TicketHistory> createState() => _TicketHistoryState();
}

class _TicketHistoryState extends State<TicketHistory> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Color(0xFF414D55),
                      size: 30,
                    )),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Ticket All History',
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
              margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ticket 582 Details',
                          style: TextStyle(
                              color: Color(0xFF333333),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          //margin: EdgeInsets.only(bottom: 10),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 3.5),
                                      width: 5,
                                      height: 76,
                                      decoration: BoxDecoration(
                                          color: Color(0xFF3B6DF1)),
                                    ),
                                    CircleAvatar(
                                      backgroundColor: Color(0xFF3B6DF1),
                                      radius: 6,
                                      child: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 3,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 3.5),
                                      width: 5,
                                      height: 76,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF3B6DF1),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 10,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.25,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      margin: EdgeInsets.only(bottom: 10),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          border: Border.all(
                                            color: Color(0xFFD4E1FF),
                                          )),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            'March 24',
                                            style: TextStyle(
                                              color: Color(0xFFF59100),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: 1,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            'Dept Head Aneesh Y N assigned ticket - TICKT-584 to Dept Employee.',
                                            style: TextStyle(
                                              color: Color(0xFF242527),
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Expanded(
                                                flex: 3,
                                                child: ElevatedButton(
                                                  onPressed: () {},
                                                  child: Text(
                                                    'Parent ticket details',
                                                    style:
                                                        TextStyle(fontSize: 9),
                                                  ),
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    primary: Color(0xFFA1A0FD),
                                                    onPrimary: Colors.white,
                                                    elevation: 0,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Expanded(
                                                flex: 3,
                                                child: ElevatedButton(
                                                  onPressed: () {},
                                                  child: Text(
                                                    'Child ticket details',
                                                    style:
                                                        TextStyle(fontSize: 9),
                                                  ),
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    primary: Color(0xFF7BEBA1),
                                                    onPrimary: Colors.white,
                                                    elevation: 0,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: Container(
                                                  width: 30,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30),
                                                      color: Color(0xFFEDF4FF)),
                                                  child: Icon(
                                                    Icons.attach_file,
                                                    color: Color(0xFF3B6DF1),
                                                    size: 16,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: Container(
                                                  width: 30,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30),
                                                      color: Color(0xFFEDF4FF)),
                                                  child: Icon(
                                                    Icons
                                                        .messenger_outline_outlined,
                                                    color: Color(0xFF3B6DF1),
                                                    size: 16,
                                                  ),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          //margin: EdgeInsets.only(bottom: 10),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 3.5),
                                      width: 5,
                                      height: 76,
                                      decoration: BoxDecoration(
                                          color: Color(0xFF3B6DF1)),
                                    ),
                                    CircleAvatar(
                                      backgroundColor: Color(0xFF3B6DF1),
                                      radius: 6,
                                      child: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 3,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 3.5),
                                      width: 5,
                                      height: 76,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF3B6DF1),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 10,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.25,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      margin: EdgeInsets.only(bottom: 10),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          border: Border.all(
                                            color: Color(0xFFD4E1FF),
                                          )),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            'March 24',
                                            style: TextStyle(
                                              color: Color(0xFFF59100),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: 1,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            'Dept Head Aneesh Y N assigned ticket - TICKT-584 to Dept Employee.',
                                            style: TextStyle(
                                              color: Color(0xFF242527),
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Expanded(
                                                flex: 3,
                                                child: ElevatedButton(
                                                  onPressed: () {},
                                                  child: Text(
                                                    'Parent ticket details',
                                                    style:
                                                        TextStyle(fontSize: 9),
                                                  ),
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    primary: Color(0xFFA1A0FD),
                                                    onPrimary: Colors.white,
                                                    elevation: 0,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Expanded(
                                                flex: 3,
                                                child: ElevatedButton(
                                                  onPressed: () {},
                                                  child: Text(
                                                    'Child ticket details',
                                                    style:
                                                        TextStyle(fontSize: 9),
                                                  ),
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    primary: Color(0xFF7BEBA1),
                                                    onPrimary: Colors.white,
                                                    elevation: 0,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: Container(
                                                  width: 30,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30),
                                                      color: Color(0xFFEDF4FF)),
                                                  child: Icon(
                                                    Icons.attach_file,
                                                    color: Color(0xFF3B6DF1),
                                                    size: 16,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: Container(
                                                  width: 30,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30),
                                                      color: Color(0xFFEDF4FF)),
                                                  child: Icon(
                                                    Icons
                                                        .messenger_outline_outlined,
                                                    color: Color(0xFF3B6DF1),
                                                    size: 16,
                                                  ),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          //margin: EdgeInsets.only(bottom: 10),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 3.5),
                                      width: 5,
                                      height: 76,
                                      decoration: BoxDecoration(
                                          color: Color(0xFF3B6DF1)),
                                    ),
                                    CircleAvatar(
                                      backgroundColor: Color(0xFF3B6DF1),
                                      radius: 6,
                                      child: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 3,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 3.5),
                                      width: 5,
                                      height: 76,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF3B6DF1),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 10,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.25,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      margin: EdgeInsets.only(bottom: 10),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          border: Border.all(
                                            color: Color(0xFFD4E1FF),
                                          )),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            'March 24',
                                            style: TextStyle(
                                              color: Color(0xFFF59100),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: 1,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            'Dept Head Aneesh Y N assigned ticket - TICKT-584 to Dept Employee.',
                                            style: TextStyle(
                                              color: Color(0xFF242527),
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Expanded(
                                                flex: 3,
                                                child: ElevatedButton(
                                                  onPressed: () {},
                                                  child: Text(
                                                    'Parent ticket details',
                                                    style:
                                                        TextStyle(fontSize: 9),
                                                  ),
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    primary: Color(0xFFA1A0FD),
                                                    onPrimary: Colors.white,
                                                    elevation: 0,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Expanded(
                                                flex: 3,
                                                child: ElevatedButton(
                                                  onPressed: () {},
                                                  child: Text(
                                                    'Child ticket details',
                                                    style:
                                                        TextStyle(fontSize: 9),
                                                  ),
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    primary: Color(0xFF7BEBA1),
                                                    onPrimary: Colors.white,
                                                    elevation: 0,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: Container(
                                                  width: 30,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30),
                                                      color: Color(0xFFEDF4FF)),
                                                  child: Icon(
                                                    Icons.attach_file,
                                                    color: Color(0xFF3B6DF1),
                                                    size: 16,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: Container(
                                                  width: 30,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30),
                                                      color: Color(0xFFEDF4FF)),
                                                  child: Icon(
                                                    Icons
                                                        .messenger_outline_outlined,
                                                    color: Color(0xFF3B6DF1),
                                                    size: 16,
                                                  ),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
