import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:help_us/Dashboard.dart';
import 'package:help_us/Login_screen.dart';
import 'package:help_us/Todolist.dart';
import 'package:help_us/Createticket.dart';
import 'package:help_us/ViewTicket.dart';
import 'package:help_us/Welcome_screen.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);
  runApp(const MyApp());
  configLoading();
}


void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.ring
    ..maskType = EasyLoadingMaskType.custom
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Color(0xFF7861D7)
    ..backgroundColor = Colors.white
    ..indicatorColor = Color(0xFF7861D7)
    ..textColor = Color(0xFF7861D7)
    ..maskColor = Colors.black.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = false;
    //..customAnimation = CustomAnimation();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Help Us',
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
          scaffoldBackgroundColor: Color(0xFFF1F5F8)),
      //home: Loginhome(),
      initialRoute: '/welcomescreen',
      routes: {
        '/welcomescreen': (context) => WelcomeScreen(),
        '/loginscreen': (context) => LoginPage(),
        '/dashboard': (context) => Dashboard(),
        '/todolist': (context) => Todo(),
        '/createticket': (context) => CreateTicket(),
        '/viewticket': (context) => ViewTicket(),
      },
      builder: EasyLoading.init(),
    );
  }
}
