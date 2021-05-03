import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'as url_launcher;
import 'constants.dart';

class About1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "About us",
        ),
        backgroundColor: Colors.indigo,
      ),
      body: About(),
    );
  }
}

class About extends StatelessWidget {
  static final List<Widget> kAboutListTiles = <Widget>[
    ListTile(
      title: Text(
        APP_DESCRIPTION,
      ),
    ),
    Divider(),
    ListTile(
      leading: Icon(
        Icons.shop,
      ),
      title: Text(
        'Rate on Google Play',
      ),
      onTap: () => url_launcher.launch(GOOGLEPLAY_URL),
    ),
    ListTile(
      leading: Icon(
        Icons.code,
      ),
      title: Text(
        'Source Code on GitHub',
      ),
      onTap: () => url_launcher.launch(GITHUB_URL),
    ),
    ListTile(
      leading: Icon(
        Icons.bug_report,
      ),
      title: Text(
        'Report issue on GitHub',
      ),
      onTap: () => url_launcher.launch('$GITHUB_URL/issues'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final header = ListTile(
      leading: KAppIcon,
      title: Text(
        APP_NAME,
      ),
      subtitle: Text(
        APP_VERSION,
      ),
    );
    return ListView(
      children: <Widget>[
        header,
        ...kAboutListTiles,
      ],
    );
  }
}