import 'package:carousel_slider/carousel_slider.dart';
import 'package:flight_booking_app/common/newColor.dart';
import 'package:flight_booking_app/common/string.dart';
import 'package:flight_booking_app/component/newButton.dart';
import 'package:flight_booking_app/screens/create_new_user.dart';
import 'package:flutter/material.dart';

class SignUP extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SignUPState();
  }
}

class SignUPState extends State {
  CarouselSlider carouselSlider;
  int _current = 0;
  //adding  images in a list
  List imgList = [
    'assets/images/intro1.jpg',
    'assets/images/intro2.jpg',
    'assets/images/intro3.jpg',
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            carouselSlider = CarouselSlider(   // use of carousel slider properties
              height: MediaQuery.of(context).size.height/ 2,
              initialPage: 0,
              enableInfiniteScroll: false,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index) {
                setState(() {
                  _current = index;
                });
              },
              items: imgList.map((imgUrl) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height/2,
                       margin: EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                          image: AssetImage(         //setting images url to slides
                            imgUrl,
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              //Bottom dots for slides
              children: map<Widget>(imgList, (index, url) {
                return Container(
                  width: 7.0,
                  height: 7.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index
                        ? NewColors.buttonColor
                        : NewColors.dotlightWhite,
                  ),
                );
              }),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              NewButton(
                //Reuse of customButton
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateNewUser()));},
                title: Strings.signUp,
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
