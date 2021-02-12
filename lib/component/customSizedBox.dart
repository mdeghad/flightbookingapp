import 'package:flutter/material.dart';

class CustomSizeBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height/6,
    );
  }
}

class CustomSizeBox1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery
            .of(context)
            .size
            .height / 150
    );
  }
}
  class CustomSizeBox2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return SizedBox(
  height:MediaQuery.of(context).size.height/30
  );
  }
  }