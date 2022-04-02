import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:help_us/Sidebar.dart';


class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Sidebar(),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu,color: Color(0xFF2662F0),),
          onPressed: (){
            _scaffoldKey.currentState!.openDrawer();
          },
        ),
        backgroundColor: Color(0xFFE5E5E5),
        elevation: 0,
        title: Text('Menu',style: TextStyle(color: Color(0xFF2662F0)),),
        actions: [
          Container(
            child: Row(
              children: [
                Icon(Icons.notifications),
                SizedBox(width: 10,),
                CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 20,
                    child: CircleAvatar(
                      radius: 18,
                    )
                ),
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
              margin: EdgeInsets.fromLTRB(20,10,20,20),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.home,color: Color(0xFF414D55),size: 30,),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Home',style: TextStyle(color: Color(0xFF414D55),fontSize: 28,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 180,
                    padding: EdgeInsets.all(24),
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
                            Text('Tickets',style: TextStyle(color: Color(0xFF414D55),fontSize: 18,fontWeight: FontWeight.bold),),
                            SizedBox(width: 5,),
                            Text('Nims DXB',style: TextStyle(color: Color(0xFF2395FF),fontSize: 18,fontWeight: FontWeight.bold),)],
                        ),
                        Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.7,
                              height: 8,
                              decoration: BoxDecoration(color: Colors.purple),
                            )
                          ],
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
                                    Text('Resolved',style: TextStyle(color: Color(0xFF6A86A0),fontSize: 12),),
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
                                    Text('Open',style: TextStyle(color: Color(0xFF6A86A0),fontSize: 12),),
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
                                    Text('Escalated',style: TextStyle(color: Color(0xFF6A86A0),fontSize: 12),),
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
                  SizedBox(height: 10,),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
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
                                  image:
                                  AssetImage('assets/images/Create.png')),
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
                        Container(
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
                        Container(
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
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 280,
                    padding: EdgeInsets.all(24),
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
                        Text('Departments',style: TextStyle(color: Color(0xFF414D55),fontSize: 18,fontWeight: FontWeight.bold),),
                        SizedBox(height: 18,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(Icons.arrow_back_ios_outlined,color: Color(0xFFA2C0D4),),
                            Text('Administration',style: TextStyle(color: Color(0xFF414D55),fontSize: 14),),
                            Icon(Icons.arrow_forward_ios_outlined,color: Color(0xFFA2C0D4),),
                          ],
                        ),
                        SizedBox(height: 40,),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.4,
                                    child: Row(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
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
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Text('112'),
                                            Text('PENDING')
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.4,
                                    child: Row(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
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
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Text('112'),
                                            Text('RESOLVED')
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.4,
                                    child: Row(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
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
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Text('112'),
                                            Text('ESCALATED')
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Text('456'),
                                  Text('Total Tickets'),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 350,
                    padding: EdgeInsets.all(24),
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
                        Text('Ticket Status',style: TextStyle(color: Color(0xFF414D55),fontSize: 18,fontWeight: FontWeight.bold),),
                        SizedBox(height: 18,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(Icons.arrow_back_ios_outlined,color: Color(0xFFA2C0D4),),
                            Text('March',style: TextStyle(color: Color(0xFF414D55),fontSize: 14),),
                            Icon(Icons.arrow_forward_ios_outlined,color: Color(0xFFA2C0D4),),
                          ],
                        ),
                        SizedBox(height: 50,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('648'),
                                Text('Resolved'),
                              ],
                            ),
                            Container(
                              width: 120,
                              height: 10,
                              decoration: BoxDecoration(
                                color: Color(0xFF04E762),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('648'),
                                Text('Rejected'),
                              ],
                            ),
                            Container(
                              width: 200,
                              height: 10,
                              decoration: BoxDecoration(
                                color: Color(0xFFFF715B),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('648'),
                                Text('In Progress'),
                              ],
                            ),
                            Container(
                              width: 40,
                              height: 10,
                              decoration: BoxDecoration(
                                color: Color(0xFF0496FF),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('648'),
                                Text('Created'),
                              ],
                            ),
                            Container(
                              width: 60,
                              height: 10,
                              decoration: BoxDecoration(
                                color: Color(0xFF6665DD),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('648'),
                                Text('Reopen'),
                              ],
                            ),
                            Container(
                              width: 80,
                              height: 10,
                              decoration: BoxDecoration(
                                color: Color(0xFF34D1BF),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
