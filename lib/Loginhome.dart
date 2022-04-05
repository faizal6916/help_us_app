import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:help_us/Login.dart';


class Loginhome extends StatefulWidget {
  const Loginhome({Key? key}) : super(key: key);

  @override
  State<Loginhome> createState() => _LoginhomeState();
}

class _LoginhomeState extends State<Loginhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
           width: MediaQuery.of(context).size.width,
           padding: EdgeInsets.fromLTRB(30,10,30,30),
           decoration: BoxDecoration(
             image: DecorationImage(
               image: AssetImage('assets/images/Vector.png'),
               fit: BoxFit.cover,
             ),
           ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Track your issues with\n          our simple,    \n    intuitive interface ', style: TextStyle(fontSize: 24,color: Color(0xFF1B344B)),),
              SizedBox(height: 20,),
              Align(
                  alignment: Alignment(-0.75,-0.50),
                  child: Image(image: AssetImage('assets/images/Group.png'),width: 200,height: 300,)),
              ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '/loginscreen');
                  },
                  child: Text('Login',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(MediaQuery.of(context).size.width, 50),
                    primary: Color(0xFF7861D7),
                    onPrimary: Colors.white,
                  ),
              ),
              SizedBox(height: 15,),
              ElevatedButton(
                onPressed: (){
                  //Navigator.pushNamed(context, '/loginscreen');
                },
                child: Text('Create Ticket',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(MediaQuery.of(context).size.width, 50),
                  primary: Color(0xFF2395FF),
                  onPrimary: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
