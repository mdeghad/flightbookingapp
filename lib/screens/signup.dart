import 'package:carousel_slider/carousel_slider.dart';
import 'package:flight_booking_app/common/Color.dart';
import 'package:flight_booking_app/common/string.dart';
import 'package:flight_booking_app/component/raisedButton.dart';
import 'package:flight_booking_app/screens/create_new_user.dart';
import 'package:flutter/material.dart';

class SignUP extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SignUpState();
  }
}

class SignUpState extends State {

  double height;
  double width;
  CarouselSlider carouselSlider;
  int _current = 0;

  //looping of images
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    try {
      for (var i = 0; i < list.length; i++) {
        result.add(handler(i, list[i]));
      }
    } catch (e) {
      throw (e);
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;                    //Orientation Checking
    final width = MediaQuery.of(context).size.width;
    try {
      if (width > 600) {
        return Slides(height=250);
      } else {
        return Slides(height=500);
      }
    } catch (e) {}
  }
  Widget Slides(height) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            carouselSlider = CarouselSlider(
              // use of carousel slider properties
              height:height,
              aspectRatio: 16 / 9,
              initialPage: 0,
              enableInfiniteScroll: false,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index) {
                setState(() {
                  _current = index;
                });
              },
              items: Strings.imgList.map((imgUrl) {
                //setting imageList to carousel itemlist
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Image.asset(imgUrl,width:MediaQuery.of(context).size.width,height:MediaQuery.of(context).size.height/2,fit: BoxFit.fill,),
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              //Bottom dots for slides
              mainAxisAlignment: MainAxisAlignment.center,
              children: map<Widget>(Strings.imgList, (index, url) {
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
              //Reuse of customButton
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedBtn(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CreateNewUser()));
                    },
                    title: Strings.signUp,
                  ),
                ]),
          ],
        ),
      ),
    );
  }
}
