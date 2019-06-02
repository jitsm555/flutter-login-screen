import 'package:flutter/material.dart';
import 'util.dart';
import 'login_page.dart';
import 'sign_up_page.dart';

class SplashPage extends StatelessWidget {
  static String tag = 'splash-page';
  @override
  Widget build(BuildContext context) {
    final avatar = CircleAvatar(
      backgroundColor: Colors.transparent,
      radius: 48.0,
      child: Image.asset('images/logo.png'),
    );
    final signUpButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
        onPressed: () {
          Navigator.of(context).pushNamed(SignUpPage.tag);
        },
        padding: EdgeInsets.all(12.0),
        color: getMaterialColor(),
        child: Text(
          "Sign Up",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );

    final loginInButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
        onPressed: () {
          Navigator.of(context).pushNamed(LoginPage.tag);
        },
        padding: EdgeInsets.all(12.0),
        color: getMaterialColor(),
        child: Text(
          "Log In",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );

    final body = new Center(
      child: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.only(left: 24.0, right: 24.0),
        children: <Widget>[
          avatar,
          SizedBox(height: 48.0),
          signUpButton,
          SizedBox(height: 8.0),
          loginInButton
        ],
      ),
    );

    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        title: new Text(
          "Login Demo",
          style: new TextStyle(color: Colors.white),
        ),
      ),
      body: body,
    );
  }
}
