import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:help_us/Sidebar.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'dart:async';

class TicketDetails extends StatefulWidget {
  const TicketDetails({Key? key}) : super(key: key);

  @override
  State<TicketDetails> createState() => _TicketDetailsState();
}

class _TicketDetailsState extends State<TicketDetails> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  Object? _dropdownvalue;
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
                  'Ticket Details',
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
              margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 480,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/images/Ticketbg.png'),
                      fit: BoxFit.cover,
                    )),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'TICKT - 582',
                                  style: TextStyle(
                                      color: Color(0xFF8B92BB),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'NIMS-DXB',
                                  style: TextStyle(
                                      color: Color(0xFF2395FF),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('View History'),
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Color(0xFF34D1BF)),
                              ),
                            )
                          ],
                        ),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '05-SEP',
                                    style: TextStyle(
                                        color: Color(0xFF595959),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    'Created',
                                    style: TextStyle(
                                        color: Color(0xFFA5A5A5),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '05-SEP',
                                    style: TextStyle(
                                        color: Color(0xFF595959),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    'Expected',
                                    style: TextStyle(
                                        color: Color(0xFFA5A5A5),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Color(0xFFFF3F3F),
                                        radius: 6,
                                        child: CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: 4,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        'CRITICAL',
                                        style: TextStyle(
                                            color: Color(0xFF595959),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'Severity',
                                    style: TextStyle(
                                        color: Color(0xFFA5A5A5),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Brooklyn Simmons',
                                    style: TextStyle(
                                        color: Color(0xFF595959),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    'Created User',
                                    style: TextStyle(
                                        color: Color(0xFFA5A5A5),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    'GRADE 9-12 AN',
                                    style: TextStyle(
                                        color: Color(0xFF595959),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    'Department',
                                    style: TextStyle(
                                        color: Color(0xFFA5A5A5),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '9562682548',
                                    style: TextStyle(
                                        color: Color(0xFF595959),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    'Contact No.',
                                    style: TextStyle(
                                        color: Color(0xFFA5A5A5),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    'Cameron Williamson',
                                    style: TextStyle(
                                        color: Color(0xFF595959),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    'Point of Contact',
                                    style: TextStyle(
                                        color: Color(0xFFA5A5A5),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Cameron Williamson',
                                    style: TextStyle(
                                        color: Color(0xFF595959),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    'Assigned To.',
                                    style: TextStyle(
                                        color: Color(0xFFA5A5A5),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    '0',
                                    style: TextStyle(
                                        color: Color(0xFF595959),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Text(
                                    'Split Count',
                                    style: TextStyle(
                                        color: Color(0xFFA5A5A5),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Color(0xFFCFE6FF),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Description:',
                                style: TextStyle(
                                    color: Color(0xFF2395FF).withOpacity(0.5)),
                              ),
                              Text(
                                'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. ',
                                style: TextStyle(
                                    color: Color(0xFF9FA0A1),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 30,
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
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 780,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: Text(
                              'Ticket Actions',
                              style: TextStyle(
                                  color: Color(0xFF414D55),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            )),
                            Expanded(
                              child: DropdownButtonFormField(
                                hint: Text(
                                  'Assign Ticket',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                ),
                                items: <String>[
                                  'A',
                                  'B',
                                  'C',
                                  'Deep',
                                  'hamdanbin muhammed bin rashid al'
                                ].map((item) {
                                  return DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(item),
                                  );
                                }).toList(),
                                onChanged: (_) {},
                                isExpanded: true,
                                decoration: InputDecoration(
                                    hintStyle: TextStyle(color: Colors.red),
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 15),
                                    fillColor: Color(0xFF2395FF),
                                    suffixIconColor: Colors.white,
                                    filled: true,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    )),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Department',
                              style: TextStyle(
                                  color: Color(0xFF6B6B6B),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            DropdownButtonFormField(
                              hint: Text('Accadamic-  Primary&Middle'),
                              items:
                                  <String>['one', 'two', 'three'].map((item) {
                                return DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(item),
                                );
                              }).toList(),
                              onChanged: (_) {},
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 15),
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFDDDDDD),
                                  ),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFDDDDDD),
                                  ),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Severity Level',
                                    style: TextStyle(
                                        color: Color(0xFF6B6B6B),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  DropdownButtonFormField(
                                    hint: Text('Critical'),
                                    items: ['A', 'B', 'C'].map((item) {
                                      return DropdownMenuItem<String>(
                                        value: item,
                                        child: Text(item),
                                      );
                                    }).toList(),
                                    onChanged: (_) {},
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 15, vertical: 15),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(6),
                                        borderSide: BorderSide(
                                            color: Color(0xFFDDDDDD)),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(6),
                                        borderSide: BorderSide(
                                            color: Color(0xFFDDDDDD)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Expected Date',
                                    style: TextStyle(
                                        color: Color(0xFF6B6B6B),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  ElevatedButton.icon(
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.white,
                                      onPrimary: Colors.black,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          side: BorderSide(
                                              color: Color(0xFfDDDDDD))),
                                      minimumSize: Size(280, 55),
                                      elevation: 0,
                                    ),
                                    onPressed: () async {
                                      showDatePicker(
                                        context: context,
                                        initialDate: DateTime.now(),
                                        firstDate: DateTime(2010),
                                        lastDate: DateTime(2050),
                                      );
                                    },
                                    icon: Icon(
                                      Icons.calendar_today,
                                      color: Color(0xFF2395FF),
                                    ),
                                    label: Text('Date'),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Attachment',
                              style: TextStyle(
                                  color: Color(0xFF6B6B6B),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Expanded(
                                    child: ElevatedButton.icon(
                                  onPressed: () {},
                                  icon: Icon(Icons.attach_file_outlined),
                                  label: Text('Choose File'),
                                  style: ElevatedButton.styleFrom(
                                    primary: Color(0xFFF0F0F0),
                                    onPrimary: Colors.black,
                                  ),
                                )),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                    child: Text(
                                  'No File Choosen',
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.5),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14),
                                )),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Comments',
                              style: TextStyle(
                                  color: Color(0xFF6B6B6B),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              maxLines: 5,
                              decoration: InputDecoration(
                                hintText: 'Comments',
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 20),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(6),
                                  borderSide:
                                      BorderSide(color: Color(0xFFC9DEF8)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(6),
                                  borderSide:
                                      BorderSide(color: Color(0xFFC9DEF8)),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_back),
                            label: Text('SUBMIT'),
                            style: ElevatedButton.styleFrom(
                              minimumSize:
                                  Size(MediaQuery.of(context).size.width, 50),
                              primary: Color(0xFF7861D7),
                              onPrimary: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.mail_outline),
                            label: Text('COMPOSE MAIL'),
                            style: ElevatedButton.styleFrom(
                              minimumSize:
                                  Size(MediaQuery.of(context).size.width, 50),
                              primary: Color(0xFF34D1BF),
                              onPrimary: Colors.white,
                            ),
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
