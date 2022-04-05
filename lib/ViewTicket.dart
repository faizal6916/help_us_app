import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:help_us/Sidebar.dart';
class ViewTicket extends StatefulWidget {
  const ViewTicket({Key? key}) : super(key: key);

  @override
  State<ViewTicket> createState() => _ViewTicketState();
}

class _ViewTicketState extends State<ViewTicket> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  int i = 77;
  List<String> navBarItem = ['Opened','Assigned (12)','My Actioned (15)','Closed'];
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
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
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(20),
            child: Container(
              margin: EdgeInsets.only(left: 12),
              child: Row(
                children: [
                  GestureDetector(
                      onTap: (){
                        Navigator.pushReplacementNamed(context, '/dashboard');
                      },
                      child: Icon(Icons.arrow_back,color: Color(0xFF414D55),size: 30,)),
                  SizedBox(
                    width: 5,
                  ),
                  Text('View Tickets',style: TextStyle(color: Color(0xFF414D55),fontSize: 28,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
          ),
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
                margin: EdgeInsets.fromLTRB(20,0,20,20),
                child: Column(
                  children: [
                    SizedBox(height: 10,),
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
                          contentPadding: EdgeInsets.symmetric(horizontal: 5,vertical: 15),
                          hintText: 'Ticket No',
                          icon: Icon(Icons.search),
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.arrow_back_ios_outlined,color: Color(0xFFA2C0D4),),
                          Text('September',style: TextStyle(color: Color(0xFF414D55),fontSize: 14),),
                          Icon(Icons.arrow_forward_ios_outlined,color: Color(0xFFA2C0D4),),
                        ],
                      ),
                    ),
                    SizedBox(height: 15,),
                    Container(
                      height: 40,
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: navBarItem.length,
                          itemBuilder: (context , index){
                            return InkWell(
                              onTap: (){
                                print(navBarItem[index]);
                              },
                              child: Container(
                                  padding: EdgeInsets.all(10),
                                  margin: EdgeInsets.symmetric(horizontal: 5),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Center(child: Text(navBarItem[index])),
                              ),
                            );
                          }
                      ),
                    ),
                    SizedBox(height: 15,),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Color(0xFFF1F5F8),
                              borderRadius: BorderRadius.circular(8),
                            ),

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Color(0xFF34D1BF),
                                        radius: 6,
                                        child: CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: 3,
                                        ),
                                      ),
                                      SizedBox(width: 5,),
                                      Text('MINOR',style: TextStyle(color: Color(0xFF414D55),fontSize: 10),)
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Color(0xFFFF9134),
                                        radius: 6,
                                        child: CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: 3,
                                        ),
                                      ),
                                      SizedBox(width: 5,),
                                      Text('MAJOR',style: TextStyle(color: Color(0xFF414D55),fontSize: 10),)
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Color(0xFFFF3F3F),
                                        radius: 6,
                                        child: CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: 3,
                                        ),
                                      ),
                                      SizedBox(width: 5,),
                                      Text('CRITICAL',style: TextStyle(color: Color(0xFF414D55),fontSize: 10),)
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Color(0xFF6665DD),
                                        radius: 6,
                                        child: CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: 3,
                                        ),
                                      ),
                                      SizedBox(width: 5,),
                                      Text('OTHER',style: TextStyle(color: Color(0xFF414D55),fontSize: 10),)
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 10,right: 10,top: 15),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(width: 1,color: Color(0xFFA2C0D4),)
                                    )
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          backgroundColor: Color(0xFFF1F5F8),
                                          radius: 14,
                                          child: CircleAvatar(
                                            backgroundColor: Color(0xFFFF3F3F),
                                            radius: 10,
                                          ),
                                        ),
                                        SizedBox(width: 5,),
                                        Text('TICKET-${i}',style: TextStyle(color: Color(0xFF414D55),fontSize: 10,fontWeight: FontWeight.w400),),
                                        SizedBox(width: 10,),
                                        Text('/',style: TextStyle(color: Color(0xFF8EA9BA),fontSize: 10,fontWeight: FontWeight.w400),),
                                        SizedBox(width: 10,),
                                        Text('Abdul Manaf',style: TextStyle(color: Color(0xFF414D55),fontSize: 10,fontWeight: FontWeight.w400),),
                                      ],
                                    ),
                                    SizedBox(height: 10,),
                                    Text('Amet minim mollit non deserunt ullamco est sit aliqua dolor',style: TextStyle(color: Color(0xFF414D55),fontSize: 16,fontWeight: FontWeight.w500),),
                                    //SizedBox(height: 5,),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Row(
                                        //mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [

                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              height: 50,
                                              padding: EdgeInsets.only(top: 8),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Icon(Icons.calendar_today,color: Color(0xFF2662F0),),
                                                  SizedBox(width: 5,),
                                                  Container(
                                                    child: Column(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text('05 SEP',style: TextStyle(color: Color(0xFF2662F0),fontSize: 16,fontWeight: FontWeight.w400),),
                                                        Text('Created',style: TextStyle(color: Color(0xFF59636A),fontSize: 12,fontWeight: FontWeight.w400),),
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 2,
                                            child: Container(
                                              height: 50,
                                              padding: EdgeInsets.only(top: 8),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Icon(Icons.calendar_today,color: Color(0xFF2662F0),),
                                                  SizedBox(width: 5,),
                                                  Container(
                                                    child: Expanded(
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Expanded(child: Text('Savannah Nguyen',overflow: TextOverflow.ellipsis,style: TextStyle(color: Color(0xFF2662F0),fontSize: 16,fontWeight: FontWeight.w400),)),
                                                          Expanded(child: Text('Assigned by',style: TextStyle(color: Color(0xFF59636A),fontSize: 12,fontWeight: FontWeight.w400),)),
                                                        ],
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 5,),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 30,
                                      margin: EdgeInsets.only(bottom: 15),
                                      decoration: BoxDecoration(
                                        color: Color(0xFF91E1AD).withOpacity(0.5),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Center(
                                          child: Text(
                                            ' User Created - Assigned To POC',
                                            style: TextStyle(
                                                color: Color(0xFF91E1AD),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400),
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10,right: 10,top: 15),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(width: 1,color: Color(0xFFA2C0D4),)
                                    )
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          backgroundColor: Color(0xFFF1F5F8),
                                          radius: 14,
                                          child: CircleAvatar(
                                            backgroundColor: Color(0xFFFF3F3F),
                                            radius: 10,
                                          ),
                                        ),
                                        SizedBox(width: 5,),
                                        Text('TICKET-${i}',style: TextStyle(color: Color(0xFF414D55),fontSize: 10,fontWeight: FontWeight.w400),),
                                        SizedBox(width: 10,),
                                        Text('/',style: TextStyle(color: Color(0xFF8EA9BA),fontSize: 10,fontWeight: FontWeight.w400),),
                                        SizedBox(width: 10,),
                                        Text('Abdul Manaf',style: TextStyle(color: Color(0xFF414D55),fontSize: 10,fontWeight: FontWeight.w400),),
                                      ],
                                    ),
                                    SizedBox(height: 10,),
                                    Text('Amet minim mollit non deserunt ullamco est sit aliqua dolor',style: TextStyle(color: Color(0xFF414D55),fontSize: 16,fontWeight: FontWeight.w500),),
                                    //SizedBox(height: 5,),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Row(
                                        //mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [

                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              height: 50,
                                              padding: EdgeInsets.only(top: 8),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Icon(Icons.calendar_today,color: Color(0xFF2662F0),),
                                                  SizedBox(width: 5,),
                                                  Container(
                                                    child: Column(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text('05 SEP',style: TextStyle(color: Color(0xFF2662F0),fontSize: 16,fontWeight: FontWeight.w400),),
                                                        Text('Created',style: TextStyle(color: Color(0xFF59636A),fontSize: 12,fontWeight: FontWeight.w400),),
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 2,
                                            child: Container(
                                              height: 50,
                                              padding: EdgeInsets.only(top: 8),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Icon(Icons.calendar_today,color: Color(0xFF2662F0),),
                                                  SizedBox(width: 5,),
                                                  Container(
                                                    child: Expanded(
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Expanded(child: Text('Savannah Nguyen',overflow: TextOverflow.ellipsis,style: TextStyle(color: Color(0xFF2662F0),fontSize: 16,fontWeight: FontWeight.w400),)),
                                                          Expanded(child: Text('Assigned by',style: TextStyle(color: Color(0xFF59636A),fontSize: 12,fontWeight: FontWeight.w400),)),
                                                        ],
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 5,),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 30,
                                      margin: EdgeInsets.only(bottom: 15),
                                      decoration: BoxDecoration(
                                        color: Color(0xFF91E1AD).withOpacity(0.5),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Center(
                                          child: Text(
                                            ' User Created - Assigned To POC',
                                            style: TextStyle(
                                                color: Color(0xFF91E1AD),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400),
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10,right: 10,top: 15),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(width: 1,color: Color(0xFFA2C0D4),)
                                    )
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          backgroundColor: Color(0xFFF1F5F8),
                                          radius: 14,
                                          child: CircleAvatar(
                                            backgroundColor: Color(0xFFFF3F3F),
                                            radius: 10,
                                          ),
                                        ),
                                        SizedBox(width: 5,),
                                        Text('TICKET-${i}',style: TextStyle(color: Color(0xFF414D55),fontSize: 10,fontWeight: FontWeight.w400),),
                                        SizedBox(width: 10,),
                                        Text('/',style: TextStyle(color: Color(0xFF8EA9BA),fontSize: 10,fontWeight: FontWeight.w400),),
                                        SizedBox(width: 10,),
                                        Text('Abdul Manaf',style: TextStyle(color: Color(0xFF414D55),fontSize: 10,fontWeight: FontWeight.w400),),
                                      ],
                                    ),
                                    SizedBox(height: 10,),
                                    Text('Amet minim mollit non deserunt ullamco est sit aliqua dolor',style: TextStyle(color: Color(0xFF414D55),fontSize: 16,fontWeight: FontWeight.w500),),
                                    //SizedBox(height: 5,),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Row(
                                        //mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [

                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              height: 50,
                                              padding: EdgeInsets.only(top: 8),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Icon(Icons.calendar_today,color: Color(0xFF2662F0),),
                                                  SizedBox(width: 5,),
                                                  Container(
                                                    child: Column(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text('05 SEP',style: TextStyle(color: Color(0xFF2662F0),fontSize: 16,fontWeight: FontWeight.w400),),
                                                        Text('Created',style: TextStyle(color: Color(0xFF59636A),fontSize: 12,fontWeight: FontWeight.w400),),
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 2,
                                            child: Container(
                                              height: 50,
                                              padding: EdgeInsets.only(top: 8),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Icon(Icons.calendar_today,color: Color(0xFF2662F0),),
                                                  SizedBox(width: 5,),
                                                  Container(
                                                    child: Expanded(
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Expanded(child: Text('Savannah Nguyen',overflow: TextOverflow.ellipsis,style: TextStyle(color: Color(0xFF2662F0),fontSize: 16,fontWeight: FontWeight.w400),)),
                                                          Expanded(child: Text('Assigned by',style: TextStyle(color: Color(0xFF59636A),fontSize: 12,fontWeight: FontWeight.w400),)),
                                                        ],
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 5,),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 30,
                                      margin: EdgeInsets.only(bottom: 15),
                                      decoration: BoxDecoration(
                                        color: Color(0xFF91E1AD).withOpacity(0.5),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Center(
                                          child: Text(
                                            ' User Created - Assigned To POC',
                                            style: TextStyle(
                                                color: Color(0xFF91E1AD),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400),
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
