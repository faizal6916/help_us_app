import 'package:flutter/material.dart';
import 'package:help_us/Todolist.dart';
import 'package:help_us/Dashboard.dart';

class Sidebar extends StatefulWidget {
  const Sidebar({Key? key}) : super(key: key);

  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.only(left: 20),
          children: [
            Container(
              margin: EdgeInsets.only(left: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    image: AssetImage('assets/images/helpuslogo.png'),
                    width: 50,
                    height: 50,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Sallie McBride'),
                      Text('POC'),
                    ],
                  )
                ],
              ),
            ),
            Container(
              //width: 250,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.dashboard),
                    title: Text('Dashboard'),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Dashboard()));
                    },
                    //visualDensity: VisualDensity(vertical: -4),
                  ),
                  ListTile(
                    leading: Icon(Icons.event),
                    title: Text('To-Do-List'),
                    //visualDensity: VisualDensity(vertical: -4),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Todo()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.supervisor_account),
                    title: Text('Create Tickets'),
                    //visualDensity: VisualDensity(vertical: -3),
                  ),
                  ListTile(
                    leading: Icon(Icons.mic_external_on),
                    title: Text('View Tickets'),
                    //visualDensity: VisualDensity(vertical: -3),
                  ),
                  ListTile(
                    leading: Icon(Icons.messenger_outline_outlined),
                    title: Text('Mail Tickets'),
                    //visualDensity: VisualDensity(vertical: -3),
                  ),
                  ListTile(
                    leading: Icon(Icons.star_outline),
                    title: Text('Reviews'),
                    //visualDensity: VisualDensity(vertical: -3),
                  ),
                  Expanded(
                    child: Align(
                      alignment: FractionalOffset(0.5,0.65),
                      child: ListTile(
                        leading: Icon(Icons.settings),
                        title: Text('Settings'),
                        //visualDensity: VisualDensity(vertical: -3),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
