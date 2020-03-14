import 'package:flutter/material.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'android.dart';
import 'aptitude.dart';
import 'bussiness.dart';
import 'home.dart';

void main()=>runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new DynamicTheme(
        defaultBrightness: Brightness.light,
        data: (brightness) => new ThemeData(
          primarySwatch: Colors.indigo,
          brightness: brightness,
        ),
        themedWidgetBuilder: (context, theme) {
          return new MaterialApp(
            title: 'InterView',
            theme: theme,
            home: new MyBottomNavigationBar(),
            debugShowCheckedModeBanner: false,
          );
        }
    );
  }
}

class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}
class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentindex = 0;
  final List<Widget> _baritems = [
    HomePage(),
    android(),
    Bussiness(),
    aptitude(),
  ];
  void onTappedBar(int index)
  {
    setState(() {
      _currentindex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: _baritems[_currentindex],
        bottomNavigationBar: BottomNavigationBar
          (
          onTap: onTappedBar,
          selectedItemColor: Colors.black54,
          currentIndex: _currentindex,
          items:
          [
            BottomNavigationBarItem(
              icon: new Icon(Icons.school),
              title: new Text("Home",style: TextStyle(
                color: Colors.purple,
              ),
              ),
              backgroundColor: Colors.lightBlueAccent,
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.people),
              title: new Text("HR",style: TextStyle(
                color: Colors.purple,
              ),
              ),
              backgroundColor: Colors.lightBlueAccent,
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.laptop_chromebook),
              title: new Text("Technical",style: TextStyle(
                color: Colors.purple,
              ),
              ),
              backgroundColor: Colors.lightBlueAccent,
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.palette),
              title: new Text("Aptitude",style: TextStyle(
                color: Colors.purple,
              ),
              ),
              backgroundColor: Colors.lightBlueAccent,
            ),
          ],
        )
    );
  }
}