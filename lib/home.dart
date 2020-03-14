import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:interview_ques/aptitude.dart';
import 'package:interview_ques/tips.dart';
import 'package:interview_ques/video.dart';
import 'about.dart';
import 'contact.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage>{
  void changeBrightness() {
    DynamicTheme.of(context).setBrightness(Theme.of(context).brightness == Brightness.dark? Brightness.light: Brightness.dark);
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Home Page"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("User"),
              accountEmail: new Text("Interview Questions"),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.white,
                child: new Text("Welcome"),
              ),
           ),
            new ListTile(
              title: new Text("Switch Theme"),
              trailing: new Icon(Icons.lightbulb_outline
              ),
              onTap: (){
                changeBrightness();
              },
            ),
            new ListTile(
              title: new Text("About Us"),
              trailing: new Icon(Icons.accessibility_new),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context)=>
                    new About1()));
              },
            ),
            new ListTile(
              title: new Text("Contact US"),
              trailing: new Icon(Icons.add_call),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) =>
                    new ContactUS()));
              },
            ),
            new Divider(),
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.close),
              onTap: (){
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            new Text("Click on image for Interview Tips"),
            new Material(
              child: InkWell(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (_){
                   return InterviewTips();
                  }));
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset('assets/tips.jpg',height: 200.0,),
                ),
              ),
            ),
            new Padding(padding: const EdgeInsets.only(top: 30.0),),
            new Text("Click on image for Interview Videos"),
            new Material(child: InkWell(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (_){
                  return InterviewVideos();
                }));
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset('assets/vid.jpg',height: 300.0,),
              ),
            ),
            )
          ],
        ),
      ),
    );
  }
}