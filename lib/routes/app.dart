import 'package:flutter/material.dart';
import 'package:xfocus_mobile/screens/login.dart';
import 'package:xfocus_mobile/screens/dashboard.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => LoginScreen(),
  '/dashboard': (context) => DashboardPage(title: 'Dashboard')
};
