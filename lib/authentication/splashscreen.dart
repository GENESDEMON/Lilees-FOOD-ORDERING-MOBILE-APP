import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lilees/authentication/login.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Login()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF2E7064),
        body: Center(
            child: Text('Lilees',
                style: GoogleFonts.roboto(
                    fontSize: 33,
                    fontWeight: FontWeight.w900,
                    color: Colors.white))),
      ),
    );
  }
}
