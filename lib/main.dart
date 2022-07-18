import 'package:banak/Signup_screen.dart';
import 'package:banak/home.dart';
import 'package:banak/login_screen.dart';
import 'package:banak/navigation_drawer.dart';
import 'package:banak/splash_screen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'SignUpScreen':(context) => SignUpScreen(),
        'LoginScreen':(context) => LoginScreen(),
        'HomeScreen':(context) => HomeScreen(),
        'Navigation': (context) => NavigationDrawer(),
      },
      title: 'Banak Group of Companies',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

