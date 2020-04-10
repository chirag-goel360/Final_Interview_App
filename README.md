# interview_ques

A Flutter Application which provides Answers to Questions which are asked by Companies like Google,Microsoft,Adobe,Infosys etc. in Interviews.

Me and My friend tried our best to provide best Answer to these Questions. Some help is taken from famous sites like hitbulleyes,geeks for geek,hackerrank for Answer to Questions. 

### Getting Started

For learning flutter you can take help from these sites and videos.

A few resources to get you started for your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook) 
- [Place to Learn: Flutter Tutorials](https://www.youtube.com/playlist?list=PLR2qQy0Zxs_UdqAcaipPR3CG1Ly57UlhV)

For help getting started with Flutter, view
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

Technologies|
-----------|
Flutter |
JSON |

### Developers
- Chirag Goel -Student of Amity School of Engineering and Technology(B.Tech. CSE)

        Email Address - 'chirag.goel360@gmail.com'
- Ritik Miglani -Student of Amity School of Engineering and Technology(B.Tech. CSE)

        Email Address - 'miglaniritik20@gmail.com'
- Natasha Mehta -Student of Amity School of Engineering and Technology(B.Tech. CSE)

        Email Address - 'mehtanatasha23@gmail.com'

Sample Code for interview_ques(main.dart)
```
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
```
![Image ](https://i.ibb.co/565BVCG/3.jpg)
![Image ](https://i.ibb.co/9YJTfB7/1.jpg)
![Image ](https://i.ibb.co/vLRtsQk/2.jpg)
![Image ](https://i.ibb.co/JH0tLRB/5.jpg)
![Image ](https://i.ibb.co/1Q4xjTc/6.jpg)
![Image ](https://i.ibb.co/fMgK19T/7.jpg)
![Image ](https://i.ibb.co/P1yZ9BG/8.jpg)
