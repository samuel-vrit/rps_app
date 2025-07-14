import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List images = [
    'assets/images/Paper.png',
    'assets/images/rock.png',
    'assets/images/seasor.png',
  ];

  int playerOneNumber = 0;
  int playerTwoNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/images/background@2x.png'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  playerOneNumber = Random().nextInt(3);
                });
              },
              child: RotatedBox(
                quarterTurns: 2,
                child: Image.asset(
                  images[playerOneNumber],
                  // scale: 0.1,
                ),
              ),
            ),
            Divider(),
            Image.asset('assets/images/Paper.png')
          ],
        ),
      ),
    );
  }
}
