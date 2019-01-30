import './book.dart';
import 'package:flutter/material.dart';

class BookRow extends StatelessWidget {
  final PageController pageController = PageController(viewportFraction: 0.85);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 380.0,
      width: double.infinity,
      child: PageView(
          controller: pageController,
          children: books.map((Book book) {
            return Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.black38,
                        blurRadius: 2.0,
                        spreadRadius: 1.0,
                        offset: Offset(0.0, 2.0)),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        height: 220.0,
                        width: double.infinity,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              topLeft: Radius.circular(10.0)),
                          child: Image.asset(book.asset, fit: BoxFit.cover),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, bottom: 10.0, top: 10.0),
                      child: Text(book.title,
                          style: const TextStyle(fontSize: 25.0),
                          textAlign: TextAlign.right),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, bottom: 10.0),
                      child: Text(book.author),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50.0),
                        child: MaterialButton(
                          minWidth: 70.0,
                          onPressed: () {},
                          color: Colors.blue[900],
                          child: Text('Read Book',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w500)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList()),
    );
  }
}
