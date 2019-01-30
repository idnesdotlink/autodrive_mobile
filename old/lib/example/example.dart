import 'package:flutter/material.dart';
import './content.dart';
import './gorgeous_login/main.dart';
import './bookreader/main.dart';
import './dribble_animation/main.dart';

class ExampleScreen extends StatefulWidget {
  _ExampleScreenState createState() => _ExampleScreenState();
}

class _ExampleScreenState extends State<ExampleScreen>
    with WidgetsBindingObserver {
  @override
  didPopRoute() {
    bool override;
    override = false;
    return Future<bool>.value(override);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => ExampleScreenContent(),
        '/gorgeous_login': (context) => GorgeousLogin(),
        '/bookreader': (context) => BookReaderApp(),
        '/dribble_animation': (context) => DribbleAnimation(),
      },
    );
  }
}
