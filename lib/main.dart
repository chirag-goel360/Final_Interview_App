import 'package:flutter/material.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'android.dart';
import 'aptitude.dart';
import 'bussiness.dart';
import 'home.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DynamicTheme(
      defaultBrightness: Brightness.light,
      data: (brightness) => ThemeData(
        primarySwatch: Colors.indigo,
        brightness: brightness,
      ),
      themedWidgetBuilder: (context, theme) {
        return MaterialApp(
          title: 'InterView',
          theme: theme,
          home: MyBottomNavigationBar(),
          debugShowCheckedModeBanner: false,
        );
      },
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
    Android(),
    Bussiness(),
    Aptitude(),
  ];
  void onTappedBar(int index) {
    setState(() {
      _currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _baritems[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTappedBar,
        selectedItemColor: Colors.black54,
        currentIndex: _currentindex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.school,
            ),
            label: "Home",
            backgroundColor: Colors.lightBlueAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.people,
            ),
            label: "HR",
            backgroundColor: Colors.lightBlueAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.laptop_chromebook,
            ),
            label: "Technical",
            backgroundColor: Colors.lightBlueAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.palette,
            ),
            label: "Aptitude",
            backgroundColor: Colors.lightBlueAccent,
          ),
        ],
        selectedLabelStyle: TextStyle(color: Colors.red),
        selectedFontSize: 16,
      ),
    );
  }
}
