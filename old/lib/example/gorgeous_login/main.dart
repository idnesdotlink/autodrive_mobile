import 'package:flutter/material.dart';
import './ui/login_page.dart';

class GorgeousLogin extends StatefulWidget {
  _GorgeousLoginState createState() => _GorgeousLoginState();
}

class _GorgeousLoginState extends State<GorgeousLogin> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TheGorgeousLogin',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}
