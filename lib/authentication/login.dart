import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lilees/menu/dashboard.dart';
import 'package:lilees/utils/constant.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

//Welcome headers widget
Widget headers() {
  return Container(
    child: Padding(
        padding: EdgeInsets.fromLTRB(20, 200, 20, 0),
        child: Column(
          children: [
            Text('Welcome Back!',
                style: GoogleFonts.roboto(
                    fontSize: 21,
                    fontWeight: FontWeight.w900,
                    color: Color(0xFF2E7064)))
          ],
        )),
  );
}

//Input field widgets
Widget input() {
  return Container(
    color: Colors.white,
    width: double.infinity,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 0.0),
          child: TextField(
            style: TextStyle(fontSize: 16, color: Colors.black54, height: 2.1),
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Username',
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                ),
                contentPadding: const EdgeInsets.all(15),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color(0xFF2E7064).withOpacity(0.3)),
                  borderRadius: BorderRadius.circular(5),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color(0xFF2E7064).withOpacity(0.3)),
                  borderRadius: BorderRadius.circular(5),
                )),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(40.0, 30.0, 40.0, 0.0),
          child: TextField(
            style: TextStyle(fontSize: 16, color: Colors.black54, height: 2.1),
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Password',
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                ),
                contentPadding: const EdgeInsets.all(15),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color(0xFF2E7064).withOpacity(0.2)),
                  borderRadius: BorderRadius.circular(5),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color(0xFF2E7064).withOpacity(0.2)),
                  borderRadius: BorderRadius.circular(5),
                )),
          ),
        )
      ],
    ),
  );
}

//forgot password
Widget forgotpass() {
  return Container(
    child: Padding(
        padding: EdgeInsets.fromLTRB(20, 0, 40, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text('Forgot Password',
                style: GoogleFonts.roboto(
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF2E7064)))
          ],
        )),
  );
}

//Login Button
Widget loginbutton(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context).pushNamed(Dashboard.routeName);
    },
    child: Container(
      child: Padding(
          padding: EdgeInsets.only(left: 40, right: 40),
          child: Container(
            height: 60,
            width: double.infinity,
            color: Color(0xFF2E7064),
            child: Padding(
              padding: EdgeInsets.fromLTRB(00.0, 0.0, 0.0, 0.0),
              child: Center(
                  child: Text("LOGIN",
                      style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w900,
                          color: Colors.white))),
            ),
          )),
    ),
  );
}

//create account
Widget account() {
  return Container(
    child: Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Create a new account',
                style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF2E7064)))
          ],
        )),
  );
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          shrinkWrap: true,
          physics: ScrollPhysics(),
          children: <Widget>[
            const Yheight(60),
            headers(),
            const Yheight(30),
            input(),
            const Yheight(20),
            forgotpass(),
            const Yheight(20),
            loginbutton(context),
            const Yheight(20),
            account(),
          ],
        ),
      ),
    );
  }
}
