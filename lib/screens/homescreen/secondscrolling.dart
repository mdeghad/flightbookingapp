import 'package:flight_booking_app/common/Color.dart';
import 'package:flight_booking_app/component/customSizedBox.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScrollingMenu extends StatelessWidget {
  ScrollingMenu(
      {@required this.image,
      @required this.heading,
      @required this.subTitle,
      @required this.dollar});

  final String image;
  final String heading;
  final String subTitle;
  final String dollar;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 0, 5, 0),
      width: MediaQuery.of(context).size.width * 0.65,
      height: MediaQuery.of(context).size.height / 3,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width * 0.6,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.fill)),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Align(
                child: Text(
                  dollar,
                  style: TextStyle(
                      color: NewColors.White, fontWeight: FontWeight.bold),
                ),
                alignment: Alignment.bottomLeft,
              ),
            ),
          ),
          CustomSizeBox1(),
          CustomSizeBox1(),
          CustomSizeBox1(),

          Text(
            heading,
            style: TextStyle(
                fontSize: 18,
                color: NewColors.textBlack,
                fontWeight: FontWeight.bold),
          ),
          Text(
            subTitle,
            style: TextStyle(
                fontSize: 18, color: NewColors.dotlightWhite),
          ),
        ],
      ),
    );
  }
}
