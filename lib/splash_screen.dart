import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './home_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 10), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Colors.white,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/logo.png',
                  width: 100,
                  height: 100,
                ),
                // Text(
                //   'i-SIBI',
                //   style: GoogleFonts.poppins(
                //     fontSize: 28,
                //     fontWeight: FontWeight.bold,
                //     color: Color.fromARGB(255, 0, 0, 0),
                //   ),
                // ),
                // Text(
                //   'Unggul, Mandiri, & berkarakter',
                //   style: GoogleFonts.poppins(
                //     fontSize: 12,
                //     fontWeight: FontWeight.w400,
                //     color: Color.fromARGB(255, 0, 0, 0),
                //   ),
                // ),
              ],
            )));
  }
}
