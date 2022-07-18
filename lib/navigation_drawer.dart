import 'package:banak/about_page.dart';
import 'package:banak/contact_support.dart';
import 'package:banak/home.dart';
import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget{
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.white,
        child: ListView(
          padding: padding,
          children: <Widget>[
            const SizedBox(height: 98),
            buildMenuItem(
              text: 'Home',
              icon: Icons.home,
              onClicked: () => selectedItem(context,0),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'About',
              icon: Icons.info,
              onClicked: () => selectedItem(context,1),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Contact Support',
              icon: Icons.contact_support,
              onClicked: () => selectedItem(context,2),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'logout',
              icon: Icons.logout,
              onClicked: () => selectedItem(context,3),
            ),
          ],
        ),
      )
    );
  }
  Widget buildMenuItem({
  required String text,
    required IconData icon,
    VoidCallback? onClicked,
}) {
    final color = Colors.black;
    final hoverColor = Colors.blueGrey;
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      onTap: onClicked,
      hoverColor: hoverColor,

    );
  }

  void selectedItem(BuildContext context, int index){
    Navigator.of(context).pop();
      switch (index) {
        case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) =>HomeScreen(),
        ));
        break;
        case 1:
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) =>about(),
          ));
          break;
        case 2:
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) =>ContactSupport(),
          ));
          break;
        case 3:
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) =>HomeScreen(),
          ));
          break;
      }
  }
}