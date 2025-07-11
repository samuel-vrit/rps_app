import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  print('tapped');
                },
                child: RotatedBox(
                  quarterTurns: 2,
                  child: Image.asset(
                    'assets/images/Paper.png',
                    // scale: 0.1,
                  ),
                ),
              ),
            ),
            Text(
              'Rock',
              style: GoogleFonts.anton(
                color: Color(0XFFFF58E8),
                fontSize: 60,
                fontWeight: FontWeight.w900,
              ),
            ),
            Text(
              'Paper',
              style: GoogleFonts.anton(
                color: Color(0XFFFF58E8),
                fontSize: 40,
                fontWeight: FontWeight.w800,
              ),
            ),
            Text(
              'Scissor',
              style: GoogleFonts.anton(
                color: Color(0XFFFF58E8),
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
            Expanded(
              child: Image.asset('assets/images/Paper.png'),
            )
          ],
        ),
      ),
    );
  }
}
