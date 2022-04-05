import 'package:flutter/material.dart';
import 'package:help_us/Loginhome.dart';
import 'package:help_us/Login.dart';
import 'package:help_us/Dashboard.dart';
import 'package:help_us/Todolist.dart';
import 'package:help_us/Createticket.dart';
import 'package:help_us/ViewTicket.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      //home: Loginhome(),
      initialRoute: '/loginhome',
      routes: {
        '/loginhome': (context) => Loginhome(),
        '/loginscreen': (context) => Login(),
        '/dashboard': (context) => Dashboard(),
        '/todolist' : (context) => Todo(),
        '/createticket': (context) => CreateTicket(),
        '/viewticket': (context) => ViewTicket(),
      },
    );
  }
}


