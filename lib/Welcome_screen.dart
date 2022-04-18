import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:help_us/Login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFFC2DBEA), Color(0xFFF5FBFF)])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover,
          )),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                  top: size.height * 0.08,
                  child: Text(
                      'Track your issues with\n          our simple,\n    intuitive interface.',
                      style: GoogleFonts.nunitoSans(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF1B344B),
                      ))),
              Positioned(
                  top: size.height * 0.28,
                  left: 50,
                  child: Image(image: AssetImage('assets/images/Group.png'))),
              Positioned(
                bottom: 0,
                child: Container(
                  margin: EdgeInsets.only(bottom: size.height * 0.05),
                  child: Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/loginscreen');
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(300, 50),
                            primary: Color(0xFF7861D7),
                            onPrimary: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          //Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                        },
                        child: Text(
                          'Create Ticket',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(300, 50),
                            primary: Color(0xFF2395FF),
                            onPrimary: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
