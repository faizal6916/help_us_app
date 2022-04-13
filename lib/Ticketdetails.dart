import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:help_us/Sidebar.dart';
import 'dart:async';
import 'package:file_picker/file_picker.dart';
import 'package:help_us/Widgets/Ticket_summary.dart';

class TicketDetails extends StatefulWidget {
  const TicketDetails({Key? key}) : super(key: key);

  @override
  State<TicketDetails> createState() => _TicketDetailsState();
}

class _TicketDetailsState extends State<TicketDetails> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final _formkey = GlobalKey<FormState>();
  String showDate = 'Date';
  TextEditingController selectdatectrl = TextEditingController();
  DateTime _selectedDate = DateTime.now();
  //String? _showDate = 'Date';
  bool isLoading = false;
  bool isPicked = false;
  Color pickColor = Colors.white;
  FilePickerResult? result;
  String? fileName;
  PlatformFile? pickedFile;
  Object? _dropdownvalue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Sidebar(),
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            _scaffoldKey.currentState!.openDrawer();
          },
          child: Container(
            margin: EdgeInsets.only(left: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.menu,
                  size: 24,
                  color: Color(0xFF7861D7),
                ),
                Text(
                  'Menu',
                  style: TextStyle(fontSize: 7, color: Color(0xFF7861D7)),
                )
              ],
            ),
          ),
        ),
        backgroundColor: Color(0xFFF1F5F8),
        elevation: 0,
        // title: Text(
        //   'Menu',
        //   style: TextStyle(color: Color(0xFF7861D7)),
        // ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(30),
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
                  width: 10,
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
      //backgroundColor: Color(0xFFE5E5E5),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: Column(
                children: [
                  TicketSummary(),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Form(
                      key: _formkey,
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
                                  icon: Icon(
                                    Icons.arrow_drop_down_outlined,
                                    color: Colors.white,
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
                                          horizontal: 15, vertical: 10),
                                      fillColor: Color(0xFF2395FF),
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
                                icon: Icon(
                                  Icons.arrow_drop_down_outlined,
                                  color: Color(0xFF7861D7),
                                ),
                                validator: (value) => value == null
                                    ? 'Select a Department'
                                    : null,
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
                                      icon: Icon(
                                        Icons.arrow_drop_down_outlined,
                                        color: Color(0xFF7861D7),
                                      ),
                                      validator: (value) => value == null
                                          ? 'Select Severity level'
                                          : null,
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
                                          borderRadius:
                                              BorderRadius.circular(6),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          borderSide: BorderSide(
                                              color: Color(0xFFDDDDDD)),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(6),
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
                                    TextFormField(
                                      controller: selectdatectrl,
                                      validator: (value) =>
                                          value == null || value.isEmpty
                                              ? 'Select a date'
                                              : null,
                                      decoration: InputDecoration(
                                        hintText: showDate,
                                        suffixIcon: Icon(
                                          Icons.calendar_today,
                                          color: Color(0xFF7861D7),
                                        ),
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 18),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          borderSide: BorderSide(
                                              color: Color(0xFFDDDDDD)),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          borderSide: BorderSide(
                                              color: Color(0xFFDDDDDD)),
                                        ),
                                      ),
                                      autofocus: false,
                                      onTap: () {
                                        _selectDate(context);
                                        FocusScope.of(context)
                                            .requestFocus(new FocusNode());
                                      },
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
                                      child: isLoading
                                          ? CircularProgressIndicator()
                                          : ElevatedButton.icon(
                                              onPressed: () => pickFile(),
                                              icon: Icon(
                                                  Icons.attach_file_outlined),
                                              label: Text(
                                                'Choose File',
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        0, 0, 0, 0.54),
                                                    fontSize: 14),
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                primary: Color(0xFFF0F0F0),
                                                onPrimary: Colors.black,
                                              ),
                                            )),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                      child: pickedFile != null
                                          ? Text(
                                              '$fileName',
                                              style: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(0.5),
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14),
                                            )
                                          : Text(
                                              'No File Choosen',
                                              style: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(0.5),
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14),
                                            )),
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 18, vertical: 2),
                                child: isPicked
                                    ? Text('')
                                    : Text(
                                        'Attachment Required',
                                        style: TextStyle(
                                            color: pickColor, fontSize: 12),
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
                              onPressed: () {
                                if (_formkey.currentState!.validate() &&
                                    pickedFile != null) {
                                  print('success');
                                  setState(() {
                                    isPicked = true;
                                  });
                                } else {
                                  setState(() {
                                    pickColor = Color(0xFFD50000);
                                  });
                                }
                              },
                              icon: Icon(Icons.arrow_back),
                              label: Text('SUBMIT'),
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(320, 50),
                                  primary: Color(0xFF7861D7),
                                  onPrimary: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
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
                                  minimumSize: Size(320, 50),
                                  primary: Color(0xFF34D1BF),
                                  onPrimary: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  //-------------DatePicker-------------//
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2010),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        selectdatectrl.text = _selectedDate.toString().split(' ')[0];
        showDate = selectdatectrl.text;
      });
    }
  }

  //------------file picker-----------//
  void pickFile() async {
    try {
      setState(() {
        isLoading = true;
      });

      result = await FilePicker.platform.pickFiles(
        type: FileType.any,
        allowMultiple: false,
      );

      if (result != null) {
        fileName = result!.files.first.name;
        pickedFile = result!.files.first;

        print(fileName);
      }

      setState(() {
        isLoading = false;
      });
    } catch (e) {
      print(e);
    }
  }
}
