import 'package:flight_booking_app/common/Color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThirdScrollingMenu extends StatelessWidget {
  ThirdScrollingMenu({@required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 0, 5, 0),
      width: MediaQuery.of(context).size.width / 2,
      height: MediaQuery.of(context).size.height * 0.35,

      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.vertical(
                top: Radius.circular(25), bottom: Radius.circular(25)),
            child: Image.asset(
              image,
              height: MediaQuery.of(context).size.height * 0.34,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fitHeight,
            ),
          ),
        ],
      ),
    );
  }
}
