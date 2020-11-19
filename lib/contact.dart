import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactUS extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Contact(),
    );
  }
}

class Contact extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData.fallback(),
        title: Text(
          "Contact Us",
          style: TextStyle(
            fontSize:20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image(
            image: AssetImage(
              "assets/pink.jpg",
            ),
            fit: BoxFit.fill,
            color: Colors.black12,
            colorBlendMode: BlendMode.darken,
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/yo.jpg',
                ),
                colorFilter: ColorFilter.mode(
                  Colors.black12.withOpacity(0.6),
                  BlendMode.dstATop,
                ),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                Padding(
                  padding: EdgeInsets.all(20.0),
                ),
                Image(
                  image: AssetImage(
                    "assets/cont.jpg",
                  ),
                ),
                Text(
                  "Phone Numbers:",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Arial",
                    fontSize: 30.0,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Ritik: 9555437096",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Arial",
                    fontSize: 15.0,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Chirag: 9818496835",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Arial",
                    fontSize: 15.0,
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top:30.0,
                  ),
                ),
                Text(
                  "Email ID:",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Arial",
                    fontSize: 30.0,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Ritik: miglaniritik20@gmail.com",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Arial",
                    fontSize: 15.0,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Chirag: chirag.goel360@gmail.com",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Arial",
                    fontSize: 15.0,
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top:60.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}