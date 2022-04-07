import 'package:flutter/material.dart';
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


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
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
                      onTap: (){
                        Navigator.pushReplacementNamed(context, '/dashboard');
                      },
                      child: Icon(Icons.arrow_back,color: Color(0xFF414D55),size: 30,)),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Create Ticket',
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
                              style: TextStyle(
                                  color: Color(0xFF414D55),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Institute',
                                  style: TextStyle(
                                      color: Color(0xFF6B6B6B),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                DropdownButtonFormField(
                                  hint: Text('Nims Dubai'),
                                  validator: (value) => value == null ? 'Select an institute' : null ,
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
                                  validator: (value) => value == null ? 'Select a department' : null ,
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
                                        validator: (value) => value == null ? 'Select Severity Level' : null,
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
                                      // ElevatedButton.icon(
                                      //   style: ElevatedButton.styleFrom(
                                      //     primary: Colors.white,
                                      //     onPrimary: Colors.black,
                                      //     shape: RoundedRectangleBorder(
                                      //         borderRadius:
                                      //             BorderRadius.circular(6),
                                      //         side: BorderSide(
                                      //             color: Color(0xFfDDDDDD))),
                                      //     minimumSize: Size(280, 55),
                                      //     elevation: 0,
                                      //   ),
                                      //   onPressed: () => _selectDate(context),
                                      //   icon: Icon(
                                      //     Icons.calendar_today,
                                      //     color: Color(0xFF2395FF),
                                      //   ),
                                      //   label: Text(showDate),
                                      //
                                      // )
                                      TextFormField(
                                        controller: selectdatectrl,
                                        validator: (value)=>value == null ? 'Select a date' : null,
                                        decoration: InputDecoration(
                                          hintText: showDate,
                                          contentPadding: EdgeInsets.symmetric(horizontal: 15,vertical: 18),
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
                                            BorderSide(color: Color(0xFFDDDDDD)),
                                          ),
                                        ),
                                        autofocus: false,
                                        onTap: (){
                                          _selectDate(context);
                                          FocusScope.of(context).requestFocus(new FocusNode());
                                          selectdatectrl.text = showDate;
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
                                  style: TextStyle(
                                      color: Color(0xFF6B6B6B),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                DropdownButtonFormField(
                                  hint: Text('Motor not workimg'),
                                  validator: (value) => value == null ? 'Select Ticket Subject' : null,
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
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Discription',
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
                                        child: isLoading ? CircularProgressIndicator() : ElevatedButton.icon(
                                      onPressed: () {
                                        pickFile();
                                      },
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
                                        child: pickedFile != null ? Text(
                                      'file${fileName}',
                                      style: TextStyle(
                                          color: Colors.black.withOpacity(0.5),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14),
                                    ) : Text(
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
                            Directionality(
                              textDirection: TextDirection.rtl,
                              child: ElevatedButton.icon(
                                onPressed: () {
                                  if(_formkey.currentState!.validate()){
                                    print('success');
                                  }
                                },
                                icon: Icon(Icons.arrow_back),
                                label: Text('SUBMIT'),
                                style: ElevatedButton.styleFrom(
                                  minimumSize:
                                      Size(MediaQuery.of(context).size.width, 50),
                                  primary: Color(0xFF2395FF),
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
        ),
      ),
    );
  }

  //-----------Datepicker------------//
  Future<void> _selectDate(BuildContext context) async{
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2010),
        lastDate: DateTime(2100),
    );
    if(picked != null && picked != selectedDate){
      setState(() {
        selectedDate = picked;
        showDate = selectedDate.toString().split(' ')[0];
      });
    }
  }

  //----------FilePicker----------//
 void pickFile() async {
    try{
      setState(() {
        isLoading = true;
      });

      result = await FilePicker.platform.pickFiles(
        type: FileType.any,
        allowMultiple: false,
      );

      if(result != null){
        fileName = result!.files.first.name;
        pickedFile = result!.files.first;

        //print(fileName);
      }

      setState(() {
        isLoading = false;
      });
    }catch(e){
      print(e);
    }
 }
}
