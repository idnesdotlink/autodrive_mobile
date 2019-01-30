import './book_row.dart';
import 'package:flutter/material.dart';

class BookShelf extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Hero(
                tag: 'image-hero',
                child: Container(
                  margin: const EdgeInsets.only(bottom: 20.0),
                  child: Image.asset('assets/example/bookreader/images/owl.png',
                      width: 50.0, height: 50.0, color: Colors.white),
                )),
            Container(
              margin: const EdgeInsets.only(bottom: 20.0),
              child: Text('Discover. Learn. Elevate.',
                  style: const TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w200)),
            ),
            Container(
              height: 450.0,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(30.0),
                    topRight: const Radius.circular(30.0)),
                color: Colors.white,
              ),
              child: DefaultTabController(
                length: 3,
                child: Column(
                  children: <Widget>[
                    TabBar(
                      indicatorWeight: 3.0,
                      isScrollable: true,
                      labelColor: Colors.black87,
                      tabs: <Widget>[
                        Tab(text: 'BOOKS'),
                        Tab(text: 'PODCAST'),
                        Tab(text: 'WORKSHOPS'),
                      ],
                    ),
                    BookRow(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
