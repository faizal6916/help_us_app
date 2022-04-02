import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:help_us/Dashboard.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.fromLTRB(30,0,30,30),
          child: SingleChildScrollView(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                    onTap:(){
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios_outlined)),
                SizedBox(height: 5,),
                Center(child: Image(image: AssetImage('assets/images/helpuslogo.png'))),
                Text('Login',style: TextStyle(fontSize: 28),),
                TextFormField(
                     decoration: InputDecoration(
                       labelText: 'Username',
                       labelStyle: TextStyle(color: Color(0xFFD2C2FF)),
                       focusedBorder: UnderlineInputBorder(
                         borderSide: BorderSide(color: Color(0xFFD2C2FF)),
                       ),
                       enabledBorder: UnderlineInputBorder(
                         borderSide: BorderSide(color: Color(0xFFD2C2FF)),
                       ),
                     ),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  obscureText: _isObscure,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Color(0xFFD2C2FF)),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFD2C2FF)),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFD2C2FF)),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isObscure? Icons.visibility : Icons.visibility_off,
                        color: Color(0xFFD2C2FF),
                      ),
                      onPressed: (){
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                    )
                  ),
                ),
                SizedBox(height: 20,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Dashboard()));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFF7861D7),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Center(child: Text('Sign In',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),)),
                  ),
                ),
                SizedBox(height: 10,),
                Center(child: Text('Did you forgot your password',style: TextStyle(color: Color(0xFF595959)),)),
                SizedBox(height: 10,),
                Center(child: Text('Tap here to reset',style: TextStyle(color: Color(0xFF2395FF),decoration: TextDecoration.underline),)),
                SizedBox(height: 10,),
                Divider(),
                SizedBox(height: 10,),
                Center(child: Text('or sign in with google',style: TextStyle(color: Color(0xFF4D4D4D)),)),
                SizedBox(height: 10,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Colors.black.withOpacity(0.2),
                    ),
                    borderRadius:
                    BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage(
                          'assets/images/google-logo-2.png',
                        ),
                        width: 40,
                        height: 40,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text('Google',style: TextStyle(color: Color(0xFF3F526D),fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}