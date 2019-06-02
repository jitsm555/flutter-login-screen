import 'package:flutter/material.dart';
import 'home_page.dart';
import 'util.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';

  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    MaterialColor colorCustom = getMaterialColor();

    final logo = CircleAvatar(
      backgroundColor: Colors.transparent,
      radius: 48.0,
      child: Image.asset('images/logo.png'),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: true,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.person_outline, color: Colors.grey),
          hintText: 'Enter Email',
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0)),
    );

    final password = TextFormField(
      autofocus: true,
      obscureText: true,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock_open, color: Colors.grey),
        hintText: 'Enter Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(HomePage.tag);
        },
        padding: EdgeInsets.all(12),
        color: colorCustom,
        child: Text('Log In', style: TextStyle(color: Colors.white)),
      ),
    );

    final forgotLabel = FlatButton(
      child: Text(
        'Forgot password?',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {
        //TODO: Add forgot password logic
      },
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
          automaticallyImplyLeading: false,
          title:
              new Text("Log In Screen", style: TextStyle(color: Colors.white))),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 48.0),
            email,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 24.0),
            loginButton,
            forgotLabel
          ],
        ),
      ),
    );
  }
}
