import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/member.dart';
import 'package:flutter_application_1/registerinfo.dart';
import 'package:flutter_application_1/singup.dart';

void main() => runApp(MainPage());

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Page',
      routes: {
        '/singup': (context) => SingUp(),
        '/registerinfo': (context) => RegisterInfo(),
        '/login': (context) => Login(),
        '/member': (context) => Member(),
      },
      home: Scaffold(
        body: Login(),
      ),
    );
  }
}
