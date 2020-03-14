import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactUS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Contact(),
    );
  }
}

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          iconTheme: IconThemeData.fallback(),
          title: new Text("Contact Us",style: new TextStyle(
            fontSize:20.0,
            fontWeight: FontWeight.bold,
          ),),
          centerTitle: true,
        ),
        body:new Stack(
          fit: StackFit.expand,
          children: <Widget>[
            new Image(
              image: new AssetImage("assets/pink.jpg"),
              fit: BoxFit.fill,
              color: Colors.black12,
              colorBlendMode: BlendMode.darken,
            ),
            new Container(
              decoration: BoxDecoration(
                image: new DecorationImage(
                  image: AssetImage('assets/yo.jpg'),
                  colorFilter: ColorFilter.mode(Colors.black12.withOpacity(0.6),
                      BlendMode.dstATop)
                )
              ),
              child:new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget>[
                  new Padding(padding: const EdgeInsets.all(20.0)),
                  new Image(image: new AssetImage("assets/cont.jpg")),
                  new Text("Phone Numbers:",style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: "Arial",
                      fontSize: 30.0,
                      color: Colors.black
                  )),
                  new Text("Ritik: 9555437096",style: new TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Arial",
                    fontSize: 15.0,
                    color: Colors.black,
                  )),
                  new Text("Chirag: 9818496835",style: new TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Arial",
                    fontSize: 15.0,
                    color: Colors.black,
                  )),
                  new Padding(padding: const EdgeInsets.only(top:30.0)),
                  new Text("Email ID:",style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: "Arial",
                      fontSize: 30.0,
                      color: Colors.black
                  )),
                  new Text("Ritik: miglaniritik20@gmail.com",style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: "Arial",
                      fontSize: 15.0,
                      color: Colors.black
                  )),
                  new Text("Chirag: chirag.goel360@gmail.com",style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: "Arial",
                      fontSize: 15.0,
                      color: Colors.black
                  )),
                  new Padding(padding: const EdgeInsets.only(top:60.0)),
                ],
              )
            ),
          ],
        )
    );
  }
}