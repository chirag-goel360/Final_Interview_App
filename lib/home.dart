import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:interview_ques/tips.dart';
import 'package:interview_ques/video.dart';
import 'about.dart';
import 'contact.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void changeBrightness() {
    DynamicTheme.of(context).setBrightness(
      Theme.of(context).brightness == Brightness.dark
          ? Brightness.light
          : Brightness.dark,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home Page",
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(
                "User",
              ),
              accountEmail: Text(
                "Interview Questions",
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  "Welcome",
                ),
              ),
            ),
            ListTile(
              title: Text(
                "Switch Theme",
              ),
              trailing: Icon(
                Icons.lightbulb_outline,
              ),
              onTap: () {
                changeBrightness();
              },
            ),
            ListTile(
              title: Text(
                "About Us",
              ),
              trailing: Icon(
                Icons.accessibility_new,
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => About1(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text(
                "Contact US",
              ),
              trailing: Icon(
                Icons.add_call,
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => ContactUS(),
                  ),
                );
              },
            ),
            Divider(),
            ListTile(
              title: Text(
                "Close",
              ),
              trailing: Icon(
                Icons.close,
              ),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              "Click on image for Interview Tips",
            ),
            Material(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) {
                        return InterviewTips();
                      },
                    ),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset(
                    'assets/tips.jpg',
                    height: 200.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 30.0,
              ),
            ),
            Text(
              "Click on image for Interview Videos",
            ),
            Material(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) {
                        return InterviewVideos();
                      },
                    ),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset(
                    'assets/vid.jpg',
                    height: 300.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
