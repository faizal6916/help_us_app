import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isObscure = true;

  final _formKey = GlobalKey<FormState>();
  TextEditingController _userName = TextEditingController();
  TextEditingController _password = TextEditingController();
  Timer? _timer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    EasyLoading.addStatusCallback((status) {
      //print('EasyLoading Status $status');
      if (status == EasyLoadingStatus.dismiss) {
        _timer?.cancel();
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            reverse: true,
            physics: NeverScrollableScrollPhysics(),
            child: Container(
              width: size.width,
              height: size.height,
              color: Colors.white,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    bottom: size.height * 0.89,
                    left: 0,
                    child: Container(
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back_ios_outlined)),
                    ),
                  ),
                  Positioned(
                    bottom: size.height * 0.75,
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xFF967FF3), Color(0xFF6649DD)]),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(132, 111, 218, 0.42),
                            offset: Offset(0, 8),
                            blurRadius: 10,
                          )
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'HELP',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 32),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  SvgPicture.asset('assets/icons/cap.svg'),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  SvgPicture.asset('assets/icons/uicon.svg'),
                                ],
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              SvgPicture.asset('assets/icons/sicon.svg')
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 18,
                    bottom: size.height*0.635,
                    child: Text(
                      'Login',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 36,
                          color: Colors.black),
                    ),
                  ),
                  Positioned(
                    bottom: size.height * 0.43,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(20,0,20,0),
                      width: 360,
                      child: Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 70,
                              child: TextFormField(
                                controller: _userName,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Enter Username';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  helperText: ' ',
                                  labelText: 'Username',
                                  labelStyle: TextStyle(color: Color(0xFFD2C2FF)),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFFD2C2FF)),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFFD2C2FF)),
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(
                              height: 70,
                              child: TextFormField(

                                obscureText: _isObscure,
                                controller: _password,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Enter password';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  helperText: ' ',
                                  suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          _isObscure = !_isObscure;
                                        });
                                      },
                                      icon: Icon(
                                        _isObscure
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                        color: Color(0xFFD2C2FF),
                                      )),
                                  labelText: 'Password',
                                  labelStyle: TextStyle(color: Color(0xFFD2C2FF)),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFFD2C2FF)),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFFD2C2FF)),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: size.height * 0.34,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          //print('success');
                           EasyLoading.show(status: 'Loading...');
                          //Navigator.pushNamed(context, '/dashboard');
                           Future.delayed(Duration(seconds: 3), () {
                             EasyLoading.dismiss();
                           });
                        }
                      },
                      child: Text(
                        'Sign In',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(320, 50),
                          primary: Color(0xFF846FDA),
                          onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                  Positioned(
                    bottom: size.height * 0.29,
                    child: Text(
                      'Did you forgot your password?',
                      style: GoogleFonts.lato(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF595959)),
                    ),
                  ),
                  Positioned(
                    bottom: size.height * 0.25,
                    child: Text('Tap here for reset',
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            decoration: TextDecoration.underline,
                            color: Color(0xFF2395FF))),
                  ),
                  Positioned(
                    bottom: size.height * 0.21,
                    child: Container(
                      height: 1,
                      width: 270,
                      color: Color(0xFFD8D8D8),
                    ),
                  ),
                  Positioned(
                    bottom: size.height * 0.169,
                    child: Text(
                      'or sign in with',
                      style: GoogleFonts.lato(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF4D4D4D)),
                    ),
                  ),
                  Positioned(
                    bottom: size.height * 0.075,
                    child: Container(
                      width: 320,
                      height: 50,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0xFFFFFFFF), Color(0xFFF8F9FF)]),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(191, 203, 223, 0.3),
                              offset: Offset(0.0, 8.0),
                              blurRadius: 10,
                            )
                          ],
                          border: Border.all(
                              width: 1,
                              color: Color.fromRGBO(170, 192, 250, 0.27))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/icons/glogo.svg'),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Google',
                            style: TextStyle(
                                color: Color(0xFF3F526D),
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: size.height * 0.01,
                    child: Container(
                      width: 134,
                      height: 5,
                      color: Color(0xFFDDDDDD),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom))
                ],
              ),
            ),
          ),
        ),
      );
  }
}
