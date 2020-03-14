import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
class InterviewTips extends StatelessWidget {
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
            home: new InterviewTip(),
            debugShowCheckedModeBanner: false,
          );
        }
    );
  }
}
class InterviewTip extends StatefulWidget {
  @override
  _InterviewTipState createState() => _InterviewTipState();
}

class _InterviewTipState extends State<InterviewTip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Tips and Tricks"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: ListView(
        children: <Widget>[
          new Text("1. Research the industry and company.\n\nAn interviewer may ask how you perceive his company's position in its industry, who the firm's competitors are, what its competitive advantages are, and how it should best go forward. For this reason, avoid trying to thoroughly research a dozen different industries. Focus your job search on just a few industries instead.\n",
          style: TextStyle(
            fontSize: 18.0,
          )),
          new Text("2. Recruit a friend to practice answering questions.\n\nActually practicing your answers out loud is an incredibly effective way to prepare. Say them to yourself or ask a friend to help run through questions and answers. You’ll find you gain confidence as you get used to saying the words.\n",
              style: TextStyle(
                fontSize: 18.0,
              )),
          new Text("3. Be prepared with examples of your work.\n\nDuring the interview, you will likely be asked about specific work you’ve completed in relation to the position. After reviewing the job description, think of work you’ve done in past jobs, clubs or volunteer positions that show you have experience and success doing the work they require.\n",
              style: TextStyle(
                fontSize: 18.0,
              )),
          new Text("4. Bring copies of your resume, a notebook and pen.\n\nTake at least five copies of your printed resume on clean paper in case of multiple interviewers. Highlight specific accomplishments on your copy that you can easily refer to and discuss. Bring a pen and a small notebook. Prepare to take notes, but not on your smartphone or another electronic device. Write information down so that you can refer to these details in your follow-up thank-you notes. Maintain eye contact as much as possible.\n",
              style: TextStyle(
                fontSize: 18.0,
              )),
          new Text("5. Plan your schedule so that you can arrive 10–15 minutes early.\n\nMap out your route to the interview location so you can be sure to arrive on time. Consider doing a practice run. If you’re taking public transportation, identify a backup plan if there are delays or closures.\n",
              style: TextStyle(
                fontSize: 18.0,
              )),
          new Text("6. Make a great first impression.\n\nDon’t forget the little things—shine your shoes, make sure your nails are clean and tidy, and check your clothes for holes, stains, pet hair and loose threads. Display confident body language and a smile throughout.\n",
              style: TextStyle(
                fontSize: 18.0,
              )),
          new Text("7. Treat everyone you encounter with respect.\n\nThis includes people on the road and in the parking lot, security personnel and front desk staff. Treat everyone you don’t know as though they’re the hiring manager. Even if they aren’t, your potential employer might ask for their feedback.\n",
              style: TextStyle(
                fontSize: 18.0,
              )),
          new Text("8. Practice good manners and body language.\n\nPractice confident, accessible body language from the moment you enter the building. Sit or stand tall with your shoulders back. Before the interview, take a deep breath and exhale slowly to manage feelings of anxiety and encourage self-confidence. The interviewer should extend their hand first to initiate a handshake. Stand, look the person in the eye and smile. A good handshake should be firm but not crush the other person’s fingers.\n",
              style: TextStyle(
                fontSize: 18.0,
              )),
        ],
      ),
    );
  }
}
