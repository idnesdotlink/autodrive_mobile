import 'package:flutter/material.dart';
import 'package:autodrive/components/app_bar/primary_app_bar.dart';

class AuthScreen extends StatefulWidget {
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PrimaryAppBar(
        primaryAppBarTitle: 'Auth',
      ),
      body: Container(
        child: Text('Auth'),
      ),
    );
  }
}
