import 'dart:async';
import 'package:banak/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}
class InitState extends State<SplashScreen> {
  @override
  void initState() {
   super.initState();
    startTimer();
  }
startTimer() async {
     var duration = Duration(seconds: 5);
   return new Timer(duration, welcomeRoute);
}
welcomeRoute(){
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context)=> LoginScreen(),
      ));
}

  @override
  Widget build(BuildContext context) {
    return initWidget();
  }
  Widget initWidget() {
    return Scaffold(
      body: Stack(
        children: [

          Center(
            child: Container(
              child: Image.asset("images/loo.PNG"),


            ),


          ),

        ],
      ),
    );
  }
}