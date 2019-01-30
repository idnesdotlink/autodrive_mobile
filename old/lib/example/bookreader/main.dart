import 'dart:async';
import './book_shelf.dart';
import 'package:flutter/material.dart';
// import './icons.dart';

void main() => runApp(BookReaderApp());

class BookReaderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book Reader',
      home: BookReaderHomePage(),
      theme: ThemeData(primarySwatch: Colors.indigo),
    );
  }
}

class BookReaderHomePage extends StatefulWidget {
  @override
  _BookReaderHomePageState createState() => _BookReaderHomePageState();
}

class _BookReaderHomePageState extends State<BookReaderHomePage>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 250), vsync: this);
    animation = Tween(begin: 1.0, end: 0.0).animate(controller)
      ..addListener(() {
        setState(() {});
      });
  }

  dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.blue[900],
      child: Stack(
        children: <Widget>[
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Hero(
                    tag: 'image-hero',
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 20.0),
                      child: Image.asset(
                          'assets/example/bookreader/images/owl.png',
                          width: 70.0,
                          height: 70.0,
                          color: Colors.white),
                    )),
                Hero(
                    tag: 'hero-text',
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 20.0),
                      child: Text('Discover. Learn. Elevate.',
                          style: const TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w200)),
                    )),
                Opacity(
                  opacity: animation.value,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: MaterialButton(
                        minWidth: 150.0,
                        onPressed: () {
                          controller.forward();
                          Future.delayed(Duration(milliseconds: 250)).then(
                              (_) => Navigator.of(context).push(
                                      MaterialPageRoute<Null>(
                                          builder: (BuildContext context) {
                                    return BookShelf();
                                  })));
                        },
                        color: Colors.white,
                        child: Text('Start Exploring',
                            style: const TextStyle(
                                color: Colors.black87,
                                fontSize: 17.0,
                                fontWeight: FontWeight.w500)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
