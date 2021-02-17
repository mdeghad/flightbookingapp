import 'package:flight_booking_app/common/Color.dart';
import 'package:flight_booking_app/common/string.dart';
import 'package:flight_booking_app/screens/homescreen/bottomnavigationBar.dart';
import 'package:flight_booking_app/screens/homescreen/firstScrolling.dart';
import 'package:flight_booking_app/screens/homescreen/thirdscrolling_menu.dart';
import 'package:flight_booking_app/screens/homescreen/secondscrolling.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeScreenState();
  }
}

class HomeScreenState extends State {
  final List icons = [];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child:
            Text(

              Strings.Home,
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 32,
                  color: NewColors.textBlack,
                  fontWeight: FontWeight.bold),
            ),
            ),
            Column(children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.14,
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  FirstScroll(
                    image: (Icons.flight),
                    color: NewColors.flightcolor,
                    title: Strings.flight,
                  ),
                  FirstScroll(
                    image: (Icons.hotel_outlined),
                    color: NewColors.hotlcolor,
                    title: Strings.hotle,
                  ),
                  FirstScroll(
                    image: (Icons.directions_car),
                    color: NewColors.carcolor,
                    title: Strings.car,
                  ),
                  FirstScroll(
                    image: (Icons.restaurant_menu),
                    color: NewColors.restcolor,
                    title: Strings.rest,
                  ),
                  FirstScroll(
                    image: (Icons.people_rounded),
                    color: NewColors.guidecolor,
                    title: Strings.guid,
                  ),

                ]),
              ),
              ListTile(
                title: Text(
                  Strings.BestOff,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: NewColors.textBlack,
                      fontSize: 22),
                ),
                subtitle: Text(
                  Strings.Recom,
                  style: TextStyle(
                      color: NewColors.dotlightWhite, fontSize: 15),
                ),
                trailing: Text(
                  Strings.viewall,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: NewColors.splashTextColor,
                      fontSize: 15),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.28,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ScrollingMenu(
                      image: Strings.image1,
                      heading: Strings.thai,
                      subTitle: Strings.bank,
                        dollar:Strings.dollar
                    ),
                    ScrollingMenu(
                      image: Strings.image4,
                      heading: Strings.paris,
                      subTitle: Strings.france,
                        dollar:Strings.dollar1
                    ),
                    ScrollingMenu(
                      image: Strings.image2,
                      heading: Strings.france,
                      subTitle: Strings.thai,
                        dollar:Strings.dollar2
                    ),
                    ScrollingMenu(
                      image: Strings.image3,
                      heading: Strings.bank,
                      subTitle: Strings.thai,
                      dollar:Strings.dollar ,
                    ),
                  ],
                ),
              )
            ]),
            ListTile(
              title: Text(
                Strings.pop,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: NewColors.textBlack,
                    fontSize: 22),
              ),
              trailing: Text(
                Strings.viewall,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: NewColors.splashTextColor,
                    fontSize: 15),
              ),
            ),
            ThirdScrollingMenu(
              image: Strings.image1,
            ),
            ThirdScrollingMenu(
              image: Strings.image4,
            ),
            ThirdScrollingMenu(
              image: Strings.image2,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNaviBar(),
    );
  }
}
