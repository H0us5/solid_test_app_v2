import 'dart:math';
import 'package:flutter/material.dart';

/// Our home page.
class MyHomePage extends StatefulWidget {
  /// Init title.
  final String title;
  const MyHomePage({required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final max = 255;
  final _random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: InkWell(
          child: Container(
            color: Color((Random().nextDouble() * 0xFFFFFF).toInt())
                .withOpacity(1.0),
            height: double.infinity,
            width: double.infinity,
            child: Center(
              child: Text(
                'Hey there',
                style: TextStyle(
                  color: Color((Random().nextDouble() * 0xFFFFFF).toInt())
                      .withOpacity(1.0),
                ),
              ),
            ),
          ),
          onTap: () {
            setState(
              () {
                return;
              },
            );
          },
        ),
      ),
    );
  }
}
