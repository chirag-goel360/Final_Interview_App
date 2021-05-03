import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class InterviewVideos extends StatelessWidget {
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
          home: InterviewVid(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}

class InterviewVid extends StatefulWidget {
  @override
  _InterviewVidState createState() => _InterviewVidState();
}

class _InterviewVidState extends State<InterviewVid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Some Helpful Videos",
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: ListView(
        children: <Widget>[
          InkWell(
            child: Text(
              "Click Me: Tips for Interview in Hindi",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w900,
                color: Colors.lightBlue,
              ),
            ),
            onTap: () => launch(
              'https://www.youtube.com/watch?v=WijSprr9lSU',
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10.0,
            ),
          ),
          InkWell(
            child: Text(
              "Click Me: Learn Java for Interview",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w900,
                color: Colors.redAccent,
              ),
            ),
            onTap: () => launch(
              'https://www.youtube.com/channel/UCGR3vMYA20JJDQvGFccujdA',
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10.0,
            ),
          ),
          InkWell(
            child: Text(
              "Click Me: Learn C for Interview",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w900,
                color: Colors.pinkAccent,
              ),
            ),
            onTap: () => launch(
              'https://www.youtube.com/playlist?list=PLVlQHNRLflP8IGz6OXwlV_lgHgc72aXlh',
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10.0,
            ),
          ),
          InkWell(
            child: Text(
              "Click Me: Learn Flutter for Interview",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w900,
                color: Colors.greenAccent,
              ),
            ),
            onTap: () => launch(
              'https://www.youtube.com/playlist?list=PL4cUxeGkcC9jLYyp2Aoh6hcWuxFDX6PBJ',
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10.0,
            ),
          ),
          InkWell(
            child: Text(
              "Click Me: Learn Machine Learning for Interview",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w900,
                color: Colors.purpleAccent,
              ),
            ),
            onTap: () => launch(
              'https://www.youtube.com/playlist?list=PLkPmSWtWNIyQtpYf0Iq-myisH__8gRy4k',
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10.0,
            ),
          ),
          InkWell(
            child: Text(
              "Click Me: Learn Aptitude for Interview",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w900,
                color: Colors.deepOrangeAccent,
              ),
            ),
            onTap: () => launch(
              'https://www.youtube.com/playlist?list=PLpyc33gOcbVA4qXMoQ5vmhefTruk5t9lt',
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10.0,
            ),
          ),
          InkWell(
            child: Text(
              "Click Me: Learn Coding Tips for Interview",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w900,
                color: Colors.indigoAccent,
              ),
            ),
            onTap: () => launch(
              'https://www.youtube.com/watch?v=Gka6UcJZ6FI',
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10.0,
            ),
          ),
          InkWell(
            child: Text(
              "Click Me: Learn Oracle Database for Interview",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w900,
                color: Colors.deepPurpleAccent,
              ),
            ),
            onTap: () => launch(
              'https://www.youtube.com/playlist?list=PLL_LQvNX4xKwbz1aJe0RofbT9YeJH9huQ',
            ),
          ),
        ],
      ),
    );
  }
}
