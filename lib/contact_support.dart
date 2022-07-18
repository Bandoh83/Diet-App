import 'package:banak/navigation_drawer.dart';
import 'package:flutter/material.dart';

class ContactSupport extends StatelessWidget{
  @override
  Widget build(BuildContext context) => Scaffold(
    drawer: NavigationDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Contact Support"),
        centerTitle: true,
      ),
    );
  }
