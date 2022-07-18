import 'package:banak/navigation_drawer.dart';
import 'package:flutter/material.dart';

class about extends StatelessWidget{
  @override
  Widget build(BuildContext context) => Scaffold(
    drawer: NavigationDrawer(),
    appBar: AppBar(
      backgroundColor: Colors.red,
      title: Text("About"),
      centerTitle: true,
    ),
  );
}
