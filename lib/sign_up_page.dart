import 'package:flutter/material.dart';
import 'util.dart';
import 'home_page.dart';
import 'login_page.dart';

class SignUpPage extends StatefulWidget {
  static String tag = 'signup-page';

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    final avatar = CircleAvatar(
      backgroundColor: Colors.transparent,
      radius: 48.0,
      child: Image.asset('images/logo.png'),
    );

    final email = TextField(
      keyboardType: TextInputType.emailAddress,
      autofocus: true,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.person_outline, color: Colors.grey),
          hintText: 'Enter Email',
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0)),
    );

    final password = TextField(
      autofocus: true,
      obscureText: true,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock_open, color: Colors.grey),
        hintText: 'Enter Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      ),
    );

    final confirmPassword = TextField(
      autofocus: true,
      obscureText: true,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock_open, color: Colors.grey),
        hintText: 'Confirm Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      ),
    );

    final accountAvailable = FlatButton(
      child: new Align(
        alignment: Alignment.centerRight,
        child: Text(
          'Already have an accout?',
          style: TextStyle(color: getMaterialColor()),
        ),
      ),
      onPressed: () {
        Navigator.of(context).pushNamed(LoginPage.tag);
      },
    );

    final signUpButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: new RaisedButton(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.0)),
        onPressed: () {
          Navigator.of(context).pushNamed(HomePage.tag);
        },
        padding: EdgeInsets.all(12.0),
        color: getMaterialColor(),
        child: new Text(
          "Sign Up",
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
          email,
          SizedBox(height: 8.0),
          password,
          SizedBox(height: 8.0),
          confirmPassword,
          SizedBox(height: 8.0),
          accountAvailable,
          signUpButton
        ],
      ),
    );

    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        automaticallyImplyLeading: false,
        title: new Text(
          "Sign Up Screen",
          style: new TextStyle(color: Colors.white),
        ),
      ),
      body: body,
    );
  }
}
