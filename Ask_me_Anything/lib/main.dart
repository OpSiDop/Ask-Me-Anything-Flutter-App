import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: const Text(
            'Ask Me Anything',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
        body: const MainBody(),
      ),
    ),
  );
}

class MainBody extends StatefulWidget {
  const MainBody({Key? key}) : super(key: key);

  @override
  State<MainBody> createState() => _MainBodyState();
}

class _MainBodyState extends State<MainBody> {
  int ballnumber = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Center(
            child: TextButton(
              onPressed: () {
                setState(() {
                  ballnumber = Random().nextInt(4) + 1;
                });
              },
              child: Image.asset('images/ball$ballnumber.png'),
            ),
          ),
        ),
      ],
    );
  }
}
