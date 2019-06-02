import 'package:flutter/material.dart';
import 'login_page.dart';
import 'home_page.dart';
import 'splash_page.dart';
import 'sign_up_page.dart';
import 'util.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    SplashPage.tag: (context) => SplashPage(),
    SignUpPage.tag: (context) => SignUpPage(),
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jits Login Screen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: getMaterialColor(),
        fontFamily: 'Nunito',
      ),
      home: SplashPage(),
      routes: routes,
    );
  }
}
