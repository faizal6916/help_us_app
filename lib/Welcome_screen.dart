import 'package:flutter/material.dart';

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
          colors: [Color(0xFFC2DBEA),Color(0xFFF5FBFF)]
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          height: size.height,
          width: size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                  top: 50,
                  left: 50,
                  child: Text(
                      'Track your issues with\n          our simple,\n    intuitive interface.',
                      style: TextStyle(fontSize: 26, color: Color(0xFF1B344B),fontWeight: FontWeight.w700),
                  )
              ),
              Positioned(
                  top: 200,
                  left: 50,
                  child: Image.asset(
                    'assets/images/Group.png',
                    width: size.width * 0.5,
                  )),
              Positioned(
                  bottom: 0,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 30),
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
                            minimumSize:
                                Size(size.width * 0.8, size.height * 0.08),
                            primary: Color(0xFF7861D7),
                            onPrimary: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Create Ticket',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          style: ElevatedButton.styleFrom(
                            minimumSize:
                                Size(size.width * 0.8, size.height * 0.08),
                            primary: Color(0xFF2395FF),
                            onPrimary: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  )
              ),

            ],
          ),
        ),
      ),
    );
  }
}
