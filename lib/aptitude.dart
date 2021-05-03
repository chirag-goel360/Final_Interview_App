import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Aptitude extends StatefulWidget {
  @override
  _AptitudeState createState() => _AptitudeState();
}

class _AptitudeState extends State<Aptitude> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Aptitude Questions",
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image(
            image: AssetImage(
              "assets/picapti.png",
            ),
            fit: BoxFit.cover,
            colorBlendMode: BlendMode.saturation,
            color: Colors.white24,
          ),
          Container(
            child: Center(
              child: FutureBuilder(
                future: DefaultAssetBundle.of(context).loadString(
                  'load_json/aptiround.json',
                ),
                builder: (context, snapshot) {
                  var mydata = jsonDecode(snapshot.data.toString());
                  return ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      index = index + 1;
                      return Card(
                        color: Colors.black45,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                          ),
                        ),
                        child: InkWell(
                          splashColor: Colors.black54,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Scaffold(
                                  appBar: AppBar(
                                    title: Text(
                                      "Question",
                                    ),
                                    backgroundColor: Colors.lightBlueAccent,
                                  ),
                                  body: Stack(
                                    fit: StackFit.expand,
                                    children: <Widget>[
                                      Image(
                                        image: AssetImage(
                                          "assets/picapti.png",
                                        ),
                                        fit: BoxFit.cover,
                                        colorBlendMode: BlendMode.darken,
                                        color: Colors.black45,
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(
                                          top: 10.0,
                                          left: 10.0,
                                          right: 10.0,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          children: <Widget>[
                                            Text(
                                              "Ques $index. " +
                                                  mydata[index - 1]['question'],
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 24.0,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                top: 5.0,
                                              ),
                                            ),
                                            Text(
                                              "Answer:\n" +
                                                  mydata[index - 1]['answer'],
                                              style: TextStyle(
                                                fontSize: 20.0,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 3.0,
                                ),
                              ),
                              Text(
                                "Ques $index. " + mydata[index - 1]['question'],
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Company: " + mydata[index - 1]['company'],
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  bottom: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: mydata == null ? 0 : mydata.length,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
