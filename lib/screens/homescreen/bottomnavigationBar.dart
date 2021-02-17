import 'package:flight_booking_app/common/Color.dart';
import 'package:flight_booking_app/common/string.dart';
import 'package:flutter/material.dart';

class BottomNaviBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BottomNaviBarState();
  }
}

class BottomNaviBarState extends State {


  int _selectedPage = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(


      currentIndex: _selectedPage,
        items: <BottomNavigationBarItem>[

         BottomNavigationBarItem(
           icon: Icon(Icons.home),title: Text(Strings.Home)),
        BottomNavigationBarItem(
           icon: Icon(Icons.explore_outlined),title: Text(Strings.explore)),
       BottomNavigationBarItem(
           icon: Icon(Icons.image_search),title: Text(Strings.search)),
        BottomNavigationBarItem(
            icon: Icon(Icons.person),title: Text(Strings.profile)),
    ],
onTap: onTapped,

      unselectedItemColor: NewColors.dotlightWhite,
      fixedColor: NewColors.splashTextColor,
      backgroundColor: NewColors.splashscreenColor,
      );

  }

  void onTapped(int index){
    setState(() {
      _selectedPage=index;
      print(index);
    });

  }
}
