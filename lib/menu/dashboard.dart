import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lilees/utils/constant.dart';

class Dashboard extends StatefulWidget {
  static const routeName = '/dashboard';
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  Widget headers() {
    return Container(
      child: Padding(
          padding: EdgeInsets.fromLTRB(30, 30, 20, 30),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Good evening',
                      style: GoogleFonts.roboto(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF000000).withOpacity(0.4))),
                  const Yheight(7),
                  Text('Greg Philips',
                      style: GoogleFonts.roboto(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF000000).withOpacity(0.63)))
                ],
              ),
              Spacer(),
              ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image.asset(
                  'assets/images/guy.jpg',
                  width: 50.0,
                  height: 50.0,
                  fit: BoxFit.fill,
                ),
              ),
            ],
          )),
    );
  }

  //Search field
  Widget search(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(Dashboard.routeName);
      },
      child: Container(
        child: Padding(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: Color(0xFFC4C4C4).withOpacity(0.13),
              ),
              height: 60,
              width: double.infinity,
              child: Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 5.0, 0.0, 0.0),
                  child: Row(
                    children: [
                      Icon(Icons.search,
                          color: Color(0xFF000000).withOpacity(0.10)),
                      const Xwidth(7),
                      Text("Search for food of chef",
                          style: GoogleFonts.roboto(
                              fontSize: 14,
                              fontWeight: FontWeight.w900,
                              color: Color(0xFF000000).withOpacity(0.10))),
                    ],
                  )),
            )),
      ),
    );
  }

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
            const Yheight(50),
            headers(),
            const Yheight(10),
            search(context)
          ],
        ),
      ),
    );
  }
}
