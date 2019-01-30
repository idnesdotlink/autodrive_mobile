import 'package:flutter/material.dart';
import '../library/lib/buttons/simple_round_icon_button.dart';

class ExampleScreenContent extends StatefulWidget {
  _ExampleScreenContentState createState() => _ExampleScreenContentState();
}

class _ExampleScreenContentState extends State<ExampleScreenContent> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
          appBar: AppBar(title: Text('sample')),
          body: Container(
            child: Column(children: <Widget>[
              /* ListView(
          children: <Widget>[
            InkWell(
                child: Container(child: Center(child: Text('Georgeous Login'),), height: 50.0,),
                onTap: () => Navigator.pushNamed(context, '/georgeous_login')
                ),
            InkWell(
                child: Container(child: Center(child: Text('Book Reader')), height: 50.0,),
                onTap: () => Navigator.pushNamed(context, '/bookreader')
                ),
            InkWell(
                child: Container(child: Center(child: Text('Dribble')), height: 50.0,),
                onTap: () => Navigator.pushNamed(context, '/dribble_animation')
                ),
            /* Expanded(child: Container(
              color: Colors.blue,
            ),) */
          ],
        ), */
              Container(
                height: 300,
                child: ListView(
                  children: <Widget>[
                    Text('test'),
                    SimpleRoundIconButton(
                      backgroundColor: Colors.orangeAccent,
                      buttonText: Text(
                        "SEND EMAIL",
                        style: TextStyle(color: Colors.white),
                      ),
                      textColor: Colors.white,
                      icon: Icon(Icons.email),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  height: 100,
                  color: Colors.blue,
                  child: Center(
                    child: SimpleRoundIconButton(
                      backgroundColor: Colors.orangeAccent,
                      buttonText: Text(
                        "SEND EMAIL",
                        style: TextStyle(color: Colors.white),
                      ),
                      textColor: Colors.white,
                      icon: Icon(Icons.email),
                    ),
                  ),
                ),
              )
            ]),
          )),
    );
  }
}
