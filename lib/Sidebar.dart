import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:help_us/Todolist.dart';
import 'package:help_us/Dashboard.dart';
import 'package:help_us/Createticket.dart';
import 'package:help_us/ViewTicket.dart';
import 'dart:math' as math;

class Sidebar extends StatefulWidget {
  const Sidebar({Key? key}) : super(key: key);

  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  @override
  Widget build(BuildContext context) {
    final hoverColor = Color(0xFFF1F5F8);
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
         SizedBox(
           height: 100,
           child: DrawerHeader(
              margin: EdgeInsets.zero,
               child: Container(
                 child: Row(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Icon(Icons.account_circle_rounded,size: 48,),
                     SizedBox(width: 10,),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         SizedBox(height: 5,),
                         Text('Sallie McBride',style: TextStyle(color: Color(0xFF414D55),fontSize: 16,fontWeight: FontWeight.w500),),
                         Text('POC',style: TextStyle(color: Color(0xFF414D55),fontSize: 10,fontWeight: FontWeight.w400),),
                       ],
                     ),
                   ],
                 ),
               )
           ),
         ),

          ListTile(
            leading: Icon(Icons.window_outlined),
            title: Text('Dashboard',style: TextStyle(color: Color(0xFF414D55),fontSize: 16,fontWeight: FontWeight.w400),),
            onTap: (){
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>Dashboard()));

              Navigator.pop(context);
              Navigator.pushNamed(context, '/dashboard');
            },
            //visualDensity: VisualDensity(vertical: -4),
          ),
          ListTile(
            leading: Icon(Icons.event),
            title: Text('To-Do-List',style: TextStyle(color: Color(0xFF414D55),fontSize: 16,fontWeight: FontWeight.w400),),
            //visualDensity: VisualDensity(vertical: -4),
            onTap: (){
              Navigator.pop(context);
              Navigator.pushNamed(context, '/todolist');
            },
          ),
          ListTile(
            leading: Icon(Icons.groups_outlined),
            title: Text('Create Tickets',style: TextStyle(color: Color(0xFF414D55),fontSize: 16,fontWeight: FontWeight.w400),),
            //visualDensity: VisualDensity(vertical: -3),
            onTap: (){
              Navigator.pop(context);
              Navigator.pushNamed(context, '/createticket');
            },
          ),
          ListTile(
            leading: Icon(Icons.biotech_outlined),
            title: Text('View Tickets',style: TextStyle(color: Color(0xFF414D55),fontSize: 16,fontWeight: FontWeight.w400),),
            //visualDensity: VisualDensity(vertical: -3),
            onTap: (){
               Navigator.pop(context);
               Navigator.pushNamed(context, '/viewticket');
            },
          ),
          ListTile(
            leading: Icon(Icons.messenger_outline_outlined),
            title: Text('Mail Tickets',style: TextStyle(color: Color(0xFF414D55),fontSize: 16,fontWeight: FontWeight.w400),),
            onTap: (){
              Navigator.pop(context);
            },
            //visualDensity: VisualDensity(vertical: -3),
          ),
          ListTile(
            leading: Icon(Icons.star_outline),
            title: Text('Reviews',style: TextStyle(color: Color(0xFF414D55),fontSize: 16,fontWeight: FontWeight.w400),),
            onTap: (){
              Navigator.pop(context);
            },
            //visualDensity: VisualDensity(vertical: -3),
          ),
          SizedBox(height: 80,),
          ListTile(
            leading: Transform.rotate(
                angle: 270 * math.pi/180,
                child: Icon(Icons.tune)),
            title: Text('Settings',style: TextStyle(color: Color(0xFF414D55),fontSize: 16,fontWeight: FontWeight.w400),),
            hoverColor: Colors.red,
            enabled: true,
            onTap: (){
              Navigator.pop(context);
            },
            //visualDensity: VisualDensity(vertical: -3),
          ),
        ],
      ),
    );
  }
}
