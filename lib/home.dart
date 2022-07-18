
import 'package:banak/details_page.dart';
import 'package:banak/navigation_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      backgroundColor: Color(0xFFD96C42),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {

          },
          icon: Icon(Icons.menu),
          color: Colors.white,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text('HOME',
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0),
            child: Row(
              children: <Widget>[
              ],
            ),
          ),
          SizedBox(height: 25.0),

          SizedBox(height: 40.0),
          Container(
            height: MediaQuery
                .of(context)
                .size
                .height - 120.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
            ),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 25.0, right: 20.0),
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 45.0),
                  child: Container(
                    height: MediaQuery
                        .of(context)
                        .size
                        .height - 250.0,
                    child: ListView(
                        children: [
                          buildSicknessItem('images/first.jpg', 'Diabetes',
                              'is a chronic (long-lasting)\nhealth condition that affects\n how your body turns food \n to energy.'),
                          buildSicknessItem('images/second.jpg', 'Diabetes',
                              'is a chronic (long-lasting)\nhealth condition that affects\n how your body turns food \n to energy.'),
                          buildSicknessItem('images/third.jpg', 'Diabetes',
                              'is a chronic (long-lasting)\nhealth condition that affects\n how your body turns food \n to energy.'),
                          buildSicknessItem('images/third.jpg', 'Diabetes',
                              'is a chronic (long-lasting)\nhealth condition that affects\n how your body')
                        ]
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildSicknessItem(String imgPath, String sicknessName, String info) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) =>
                  DetailsPage(
                      heroTag: imgPath, sicknessName: sicknessName, info: info)
          ));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Row(
                children: [
                  Hero(
                    tag: imgPath,
                    child: ClipOval(
                      child: Image(
                        image: AssetImage(imgPath),
                        fit: BoxFit.cover,
                        height: 75.0,
                        width: 75.0,

                      ),
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            sicknessName,
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold
                            )
                        ),
                        Text(
                            info,
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 15.0,
                              color: Colors.grey,
                            )
                        ),
                      ]

                  ),
                  IconButton(
                    icon: Icon(Icons.chevron_right),
                    color: Colors.black,
                    onPressed: () {},
                  )
                ],
              ),

            ),


          ],
        ),
      ),
    );
  }
}