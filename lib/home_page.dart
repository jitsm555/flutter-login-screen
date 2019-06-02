import 'package:flutter/material.dart';
import 'util.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    final avatar = CircleAvatar(
      radius: 48.0,
      backgroundColor: Colors.transparent,
      child: Image.asset('images/logo.png'),
    );

    final title = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Hi Jits',
        style: TextStyle(fontSize: 28.0, color: getMaterialColor()),
      ),
    );

    final message = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Welcome To Home Screen.',
        style: TextStyle(fontSize: 16.0, color: getMaterialColor()),
      ),
    );

    final body = new Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[avatar, title, message],
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        automaticallyImplyLeading: false,
        title: new Text("Home Screen", style: TextStyle(color: Colors.white)),
      ),
      body: body,
    );
  }
}
