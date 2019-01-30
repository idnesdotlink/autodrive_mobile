import 'package:flutter/material.dart';
import 'package:autodrive/screens/login.dart';
import 'package:autodrive/screens/dashboard.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => LoginScreen(),
  '/dashboard': (context) => DashboardScreen(title: 'Dashboard')
};
