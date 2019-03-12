import 'package:flutter/material.dart';
import 'package:autodrive/screens/login.dart';
import 'package:autodrive/screens/dashboard.dart';
import 'package:autodrive/screens/firebasemessaging.dart';
import 'package:autodrive/screens/googlesignin/googlesignin.dart';
import 'package:autodrive/screens/phone/phone.dart';
import 'package:autodrive/screens/admob.dart';
import 'package:autodrive/screens/local.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => LoginScreen(),
  '/dashboard': (context) => DashboardScreen(title: 'Dashboard'),
  '/firebase': (context) => FirebasemessagingScreen(),
  '/google': (context) => GooglesigninScreen(),
  '/phone': (context) => PhoneApp(),
  '/admob': (context) => Admob(),
  '/local': (context) => NotificationScreen(),
};
