import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:help_us/Sidebar.dart';
import 'package:file_picker/file_picker.dart';

class CreateTicket extends StatefulWidget {
  const CreateTicket({Key? key}) : super(key: key);

  @override
  State<CreateTicket> createState() => _CreateTicketState();
}

class _CreateTicketState extends State<CreateTicket> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final _formkey = GlobalKey<FormState>();
  TextEditingController selectdatectrl = TextEditingController();
  DateTime selectedDate = DateTime.now();
  String showDate = 'Date';
  FilePickerResult? result;
  String? fileName;
  PlatformFile? pickedFile;
  bool isLoading = false;
  bool isPicked = false;
  Color errColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        key: _scaffoldKey,
        drawer: Sidebar(),
        appBar: AppBar(
          leading: IconButton(
              onPressed: (){
                _scaffoldKey.currentState!.openDrawer();
              },
              icon: Icon(Icons.menu,size: 28,color: Color(0xFF7861D7),)),
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
                    'Create Ticket',
                    style: GoogleFonts.rubik(
                        color: Color(0xFF414D55),
                        fontSize: 28,
                        fontWeight: FontWeight.w500
                    ),
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
          child: Form(
            key: _formkey,
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
                              'Ticket Details',
                              style: GoogleFonts.rubik(
                                  color: Color(0xFF414D55),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500
                              )
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Institute',
                                  style: GoogleFonts.poppins(
                                      color: Color(0xFF6B6B6B),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500
                                  )
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                DropdownButtonFormField(
                                  //hint: Text('Nims Dubai'),
                                  icon: Icon(
                                    Icons.arrow_drop_down_outlined,
                                    color: Color(0xFF2395FF),
                                  ),
                                  validator: (value) => value == null
                                      ? 'Select an institute'
                                      : null,
                                  items: <String>['one', 'two', 'three']
                                      .map((item) {
                                    return DropdownMenuItem<String>(
                                      value: item,
                                      child: Text(item),
                                    );
                                  }).toList(),
                                  onChanged: (_) {},
                                  decoration: InputDecoration(
                                    hintText: 'Nims Dubai',
                                    hintStyle: GoogleFonts.lato(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black
                                    ),
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
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Department',
                                  style: GoogleFonts.poppins(
                                      color: Color(0xFF6B6B6B),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                DropdownButtonFormField(
                                  //hint: Text('Accadamic-  Primary&Middle'),
                                  icon: Icon(
                                    Icons.arrow_drop_down_outlined,
                                    color: Color(0xFF2395FF),
                                  ),
                                  validator: (value) => value == null
                                      ? 'Select a department'
                                      : null,
                                  items: <String>['one', 'two', 'three']
                                      .map((item) {
                                    return DropdownMenuItem<String>(
                                      value: item,
                                      child: Text(item),
                                    );
                                  }).toList(),
                                  onChanged: (_) {},
                                  decoration: InputDecoration(
                                    hintText: 'Accadamic-  Primary&Middle',
                                    hintStyle: GoogleFonts.lato(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black
                                    ),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Severity Level',
                                        style: GoogleFonts.poppins(
                                            color: Color(0xFF6B6B6B),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      DropdownButtonFormField(
                                        hint: Text('Critical',style: GoogleFonts.lato(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 14,
                                            color: Colors.black
                                        ),),
                                        icon: Icon(
                                          Icons.arrow_drop_down_outlined,
                                          color: Color(0xFF2395FF),
                                        ),
                                        validator: (value) => value == null
                                            ? 'Select Severity Level'
                                            : null,
                                        items: ['A', 'B', 'C'].map((item) {
                                          return DropdownMenuItem<String>(
                                            value: item,
                                            child: Text(item),
                                          );
                                        }).toList(),
                                        onChanged: (_) {},
                                        decoration: InputDecoration(
                                          prefix: Padding(
                                            padding: const EdgeInsets.only(right: 4,),
                                            child: Icon(Icons.radio_button_off,size: 10,color: Color(0xFFFF3F3F),),
                                          ),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Expected Date',
                                        style: GoogleFonts.poppins(
                                            color: Color(0xFF6B6B6B),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500
                                        ),
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
                                          hintStyle: GoogleFonts.lato(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 14,
                                              color: Colors.black
                                          ),
                                          suffixIcon: Icon(
                                            Icons.calendar_month_outlined,
                                            color: Color(0xFF2395FF),
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
                                  'Ticket Subject',
                                  style: GoogleFonts.poppins(
                                      color: Color(0xFF6B6B6B),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  //maxLines: 5,
                                  decoration: InputDecoration(
                                    hintText: 'Motor not workimg',
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 20),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(6),
                                      borderSide:
                                          BorderSide(color: Color(0xFFDDDDDD)),
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
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Discription',
                                  style: GoogleFonts.poppins(
                                      color: Color(0xFF6B6B6B),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  maxLines: 5,
                                  decoration: InputDecoration(
                                    hintText: 'Discription',
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
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Attachment',
                                  style: GoogleFonts.poppins(
                                      color: Color(0xFF6B6B6B),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500
                                  ),
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
                                                onPressed: () {
                                                  pickFile();
                                                },
                                                icon: Icon(
                                                    Icons.attach_file_outlined),
                                                label: Text(
                                                  'Choose File',
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          0, 0, 0, 0.54),
                                                      fontWeight:
                                                          FontWeight.w400,
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
                                                'file${fileName}',
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
                                              color: errColor, fontSize: 12),
                                        ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: Directionality(
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
                                        errColor = Color(0xFFD50000);
                                      });
                                    }
                                  },
                                  icon: Icon(Icons.arrow_back),
                                  label: Text(
                                    'SUBMIT',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      minimumSize: Size(320, 50),
                                      primary: Color(0xFF7861D7),
                                      onPrimary: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10))),
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
        ),
      ),
    );
  }

  //-----------Datepicker------------//
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2010),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        selectdatectrl.text = selectedDate.toString().split(' ')[0];
        showDate = selectdatectrl.text;
        //showDate = selectedDate.toString().split(' ')[0];
      });
    }
  }

  //----------FilePicker----------//
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

        //print(fileName);
      }

      setState(() {
        isLoading = false;
      });
    } catch (e) {
      print(e);
    }
  }
}
