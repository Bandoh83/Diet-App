import 'package:flutter/material.dart';
class DetailsPage extends StatefulWidget {
  final heroTag;
  final sicknessName;
  final info;

  DetailsPage({this.heroTag, this.sicknessName,this.info});

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF926452),

      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text('Details',
        style: TextStyle(
          fontFamily: 'Montserrat',fontSize: 18.0, color: Colors.white)),
        centerTitle: true,
        ),
        body: ListView(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height - 82.0,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.transparent
                ),
                Positioned(
                  top: 75.0,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(45.0),
                        topRight: Radius.circular(45.0),
                      ),
                          color: Colors.white,
                          ),
                         height: MediaQuery.of(context).size.height - 100.0,
                         width: MediaQuery.of(context).size.width
                    )
                  ),
                Positioned(
                  top:30.0,
                  left:(MediaQuery.of(context).size.width /2) - 100.0,
                  child: Hero(

                    tag: widget.heroTag,
                   child: ClipOval(
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                        image: AssetImage(widget.heroTag),
                        fit: BoxFit.cover
                        )
                      ),
                      height: 200.0,
                      width: 200.0
                    ),

                  ),
                )
                )
              ],
            )
          ],
        ),
    );
  }
}