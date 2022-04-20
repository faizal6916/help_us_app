import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:help_us/Widgets/Exit_alert.dart';
import 'dart:math' as math;

class Sidebar extends StatefulWidget {
  const Sidebar({Key? key}) : super(key: key);

  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  @override
  Widget build(BuildContext context) {
    //final hoverColor = Color(0xFFF1F5F8);
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.only(left: 15, right: 15),
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                  child: DrawerHeader(
                      margin: EdgeInsets.zero,
                      child: Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.account_circle_rounded,
                              size: 48,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Sallie McBride',
                                  style: TextStyle(
                                      color: Color(0xFF414D55),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'POC',
                                  style: TextStyle(
                                      color: Color(0xFF414D55),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )),
                ),
                ListTile(
                  leading: Icon(Icons.window_outlined),
                  title: Text(
                    'Dashboard',
                    style: TextStyle(
                        color: Color(0xFF414D55),
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  onTap: () {
                    //Navigator.push(context, MaterialPageRoute(builder: (context)=>Dashboard()));

                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/dashboard');
                  },
                  //visualDensity: VisualDensity(vertical: -4),
                ),
                ListTile(
                  leading: Icon(
                    Icons.event,
                    color: Color(0xFF7861D7),
                  ),
                  title: Text(
                    'To-Do-List',
                    style: TextStyle(
                        color: Color(0xFF7861D7),
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  //visualDensity: VisualDensity(vertical: -4),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/todolist');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.groups_outlined),
                  title: Text(
                    'Create Tickets',
                    style: TextStyle(
                        color: Color(0xFF414D55),
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  //visualDensity: VisualDensity(vertical: -3),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/createticket');
                  },
                ),
                ListTile(
                  leading: Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.rotationY(math.pi),
                      child: Icon(Icons.biotech_outlined)),
                  title: Text(
                    'View Tickets',
                    style: TextStyle(
                        color: Color(0xFF414D55),
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  //visualDensity: VisualDensity(vertical: -3),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/viewticket');
                  },
                ),
                ListTile(
                  leading: Stack(
                    children: [
                      Icon(Icons.messenger_outline_outlined),
                      Positioned(
                          top: -1,
                          right: -1,
                          child: Icon(
                            Icons.brightness_1,
                            color: Color(0xFFFDCA40),
                            size: 10,
                          ))
                    ],
                  ),
                  title: Text(
                    'Mail Tickets',
                    style: TextStyle(
                        color: Color(0xFF414D55),
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                  //visualDensity: VisualDensity(vertical: -3),
                ),
                ListTile(
                  leading: Icon(Icons.star_outline),
                  title: Text(
                    'Reviews',
                    style: TextStyle(
                        color: Color(0xFF414D55),
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                  //visualDensity: VisualDensity(vertical: -3),
                ),
                ListTile(
                  leading: Transform.rotate(
                      angle: 270 * math.pi / 180, child: Icon(Icons.tune)),
                  title: Text(
                    'Settings',
                    style: TextStyle(
                        color: Color(0xFF414D55),
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                  //visualDensity: VisualDensity(vertical: -3),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: ListTile(
                      leading: Transform.rotate(
                          angle: 90 * math.pi / 180,
                          child: Icon(
                            Icons.power_settings_new_outlined,
                            color: Color(0xFF7861D7),
                          )),
                      title: Text(
                        'Logout',
                        style: TextStyle(
                            color: Color(0xFF7861D7),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      hoverColor: Colors.red,
                      enabled: true,
                      onTap: () {
                        Navigator.pop(context);
                        showAlertDialog(context);
                      },
                      //visualDensity: VisualDensity(vertical: -3),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void showAlertDialog(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            child: Container(
              height: 295,
              padding: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  SvgPicture.asset('assets/icons/lgoutlogo.svg'),
                  SizedBox(height: 10,),
                  Text(
                    'Alert!',
                    style: GoogleFonts.rubik(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.1,
                        color: Color(0xFF7861D7)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Are you sure want to logout',
                    style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF414D55)),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          SystemNavigator.pop();
                        },
                        child: Text(
                          'OK',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xFF7861D7),
                            onPrimary: Colors.white,
                            minimumSize: Size(100, 40),
                            elevation: 0,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'CANCEL',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xFFDAE0EB),
                            onPrimary: Colors.white,
                            minimumSize: Size(100, 40),
                            elevation: 0,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}
