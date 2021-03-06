import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class _LoginBody extends StatelessWidget {
  final String assetName;
  final Widget svg = SvgPicture.asset('assets/svg/autodrive.svg');
  _LoginBody(
      {Key key,
      Widget svg,
      this.assetName = 'assets/svg/autodrive.svg'})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 100.0,
            height: 100.0,
            child: svg,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: TextFormField(
              decoration: InputDecoration(labelText: 'Masukan Nama'),
            ),
          ),
          RaisedButton(
            color: Colors.purple,
            child: Text(
              'admob',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
            onPressed: () {
              Navigator.of(context).pushNamed('/admob');
            },
          ),
          RaisedButton(
            color: Colors.purple,
            child: Text(
              'firebase',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
            onPressed: () {
              Navigator.of(context).pushNamed('/firebase');
            },
          ),
          RaisedButton(
            color: Colors.purple,
            child: Text(
              'google',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
            onPressed: () {
              Navigator.of(context).pushNamed('/google');
            },
          ),
          RaisedButton(
            color: Colors.purple,
            child: Text(
              'Phone',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
            onPressed: () {
              Navigator.of(context).pushNamed('/phone');
            },
          ),
        ],
      ),
    );
  }
}

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body:
          _LoginBody(), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
