import 'package:flutter/material.dart';
import 'package:help_us/Ticketdetails.dart';
class RecentTicket extends StatefulWidget {
  final String? nameOfmonth;
  const RecentTicket({
    Key? key,
    this.nameOfmonth,
  }) : super(key: key);

  @override
  State<RecentTicket> createState() => _RecentTicketState();
}

class _RecentTicketState extends State<RecentTicket> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
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
              margin: EdgeInsets.only(left: 10,right: 10),
              child: Text('Recent Tickets',style: TextStyle(color: Color(0xFF414D55),fontSize: 18,fontWeight: FontWeight.w500),)
          ),
          SizedBox(height: 20,),
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
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width*0.23,
                            height: 50,
                            padding: EdgeInsets.only(top: 8),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(Icons.calendar_today,color: Color(0xFF7861D7),),
                                SizedBox(width: 5,),
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(widget.nameOfmonth.toString(),style: TextStyle(color: Color(0xFF7861D7),fontSize: 16,fontWeight: FontWeight.w400),),
                                      Text('Created',style: TextStyle(color: Color(0xFF59636A),fontSize: 12,fontWeight: FontWeight.w400),),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width*0.23,
                            height: 50,
                            padding: EdgeInsets.only(top: 8),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(Icons.calendar_today,color: Color(0xFF7861D7),),
                                SizedBox(width: 5,),
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(widget.nameOfmonth.toString(),style: TextStyle(color: Color(0xFF7861D7),fontSize: 16,fontWeight: FontWeight.w400),),
                                      Text('Expected',style: TextStyle(color: Color(0xFF59636A),fontSize: 12,fontWeight: FontWeight.w400),),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          ElevatedButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>TicketDetails()));
                            },
                            child: Text('Actions'),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Color(0xFF7861D7)),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
