import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'home.dart';
import 'user.dart';

class GooglesigninScreen extends StatefulWidget {
  _GooglesigninScreenState createState() => _GooglesigninScreenState();
}

class _GooglesigninScreenState extends State<GooglesigninScreen> {
  String _username = "";
  Widget currentPage;
  GoogleSignIn googleSignIn;
  Widget userPage;

  @override
  void initState() {
    super.initState();
    userPage = Home(
      onSignin: () {
        _handleSignIn();
        print("Sign");
      },
      onLogout: _logout,
      showLoading: false,
    );
  }

  Future<FirebaseUser> _handleSignIn() async {
    setState(() {
      userPage = Home(onSignin: null, onLogout: _logout, showLoading: true);
    });
    final FirebaseAuth _auth = FirebaseAuth.instance;
    try {
      final GoogleSignIn _googleSignIn = GoogleSignIn();
      this.googleSignIn =_googleSignIn;
      final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
      final AuthCredential credential = GoogleAuthProvider.getCredential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      final FirebaseUser user = await _auth.signInWithCredential(credential);
      setState(() {
        _username = user.displayName;
        userPage = User(
          onLogout: _logout,
          user: user,
        );
      });
      return user;
    } catch (e) {
      print(e.toString());
    }
    return null;
  }

  void _logout() async {
    await googleSignIn.signOut();
    setState(() {
      userPage = Home(
        onSignin: () {
          _handleSignIn();
          print("Sign");
        },
        onLogout: _logout,
        showLoading: false,
      );
    });

    print("Logged Out");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: userPage,
    );
  }
}
