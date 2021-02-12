import 'package:flight_booking_app/common/Color.dart';
import 'package:flight_booking_app/common/string.dart';
import 'package:flight_booking_app/component/customSizedBox.dart';
import 'package:flight_booking_app/component/flatButton.dart';
import 'package:flight_booking_app/component/materialButton.dart';
import 'package:flight_booking_app/component/raisedButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
         return SignInState();
  }

}

class SignInState extends State{
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool autoValidate = false;
  bool _obscureText = true;
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  String name;
  String email;
  String password;


  void validateInputs() {
    try {
      if (_formKey.currentState.validate()) {
        _formKey.currentState.save();
      } else {
        setState(() {
          autoValidate = true;
        });
      }
    } catch (e) {
      throw (e);
    }
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Stack(


        children: <Widget>[
          // The containers in the background
          new Column(
            children: <Widget>[
              new Container(
                height: MediaQuery
                    .of(context)
                    .size
                    .height*0.70,
             //Colors.pinkAccent
                color: NewColors.loginPageColor,
              ),
              new Container(
                height: MediaQuery
                    .of(context)
                    .size
                    .height*0.30,
                color: NewColors.splashTextColor,
              ),

            ],
          ),

          new Center(child:
          new Container(

              alignment: Alignment.topCenter,
              padding: new EdgeInsets.only(
                  top: MediaQuery
                      .of(context)
                      .size
                      .height/15,
                  right: 20.0,
                  left: 20.0,
              bottom:5),
              child: new Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  child: new Card(
                      shape: RoundedRectangleBorder(
                        //color: Color(0XFFBBDEFB),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      color: Colors.white,
                      // elevation: 4.0,

                      child:ListView(
                          children: [
                             Padding(

                                 padding:
                                 EdgeInsets.only(top: 70, bottom: 10, left: 10, right: 10),
                                 child: new Form(
                                   key: _formKey,
                                   autovalidate: autoValidate,
                                   child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                     Container(
                                       margin: const EdgeInsets.fromLTRB(10, 30, 10, 0),
                                       width: MediaQuery.of(context).size.width,
                                       child: Text(
                                         Strings.login,
                                         //setting text
                                         style: GoogleFonts.spartan(
                                             fontSize: 30,
                                             fontWeight: FontWeight.bold,
                                             color: NewColors.textBlack),
                                         textAlign: TextAlign.start,
                                       ),
                                     ),
                                     SizedBox(
                                       height: 40,
                                     ),

                                     ListTile(
                                       title: Text(Strings.createuserEmail),
                                       //setting textField and validation
                                       subtitle: TextFormField(
                                         keyboardType: TextInputType.emailAddress,
                                         validator:validateEmail,
                                         onSaved: (String val) {
                                           email = val;
                                         },
                                         controller: emailController,
                                         decoration: InputDecoration(
                                           suffixIcon: Icon(
                                             Icons.email,
                                             color: NewColors.splashTextColor,
                                           ),
                                         ),
                                       ),
                                     ),
                                     ListTile(
                                       title: Text(Strings.createuserPassword),
                                       //setting textField and validation
                                       subtitle: TextFormField(
                                         controller: passwordController,
                                         keyboardType: TextInputType.emailAddress,
                                         validator:validatePassword,
                                         onSaved: (String val) {
                                           password = val;
                                         },
                                         obscureText: _obscureText,
                                         decoration: InputDecoration(
                                           //show password and hide password
                                           suffixIcon: GestureDetector(
                                             onTap: () {
                                               setState(() {
                                                 _obscureText = !_obscureText;
                                               });
                                             },
                                             child: Icon(
                                                 _obscureText
                                                     ? Icons.visibility
                                                     : Icons.visibility_off,
                                                 semanticLabel: _obscureText
                                                     ? Strings.showPassword
                                                     : Strings.hidePassword
                                             ),
                                           ),
                                         ),
                                       ),
                                     ),


                                     FlatBtn(
                                         title:Strings.frpassword,
                                         onPressed:(){} ),

                                     SizedBox(
                                       height: MediaQuery.of(context).size.height/30,
                                     ),
                                     Container(
                                       width: MediaQuery.of(context).size.width * 1.5,
                                       child: RaisedBtn(
                                           onPressed: () {
                                             validateInputs();
                                            // Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));
                                           },
                                           title: Strings.login),
                                     ),
                                     CustomSizeBox1(),
                                    CustomSizeBox1(),
                                       //Setting login via Fb or Google
                                       Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                                              Text(Strings.loginWith),
                                         //setting of button
                                         MaterailBtn(
                                             onPressed: () {},
                                             image: Strings.fb
                                         ),
                                         MaterailBtn(
                                             onPressed: () {},
                                             image: Strings.google
                                         ),
                                       ]),

                                     CustomSizeBox2(),
                                     CustomSizeBox2(),
                                         CustomSizeBox2(),
                                     Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                                       Text(
                                         Strings.newUser,
                                         textAlign: TextAlign.center,
                                         style: TextStyle(fontSize: 15),
                                       ),

                                       //setting of button
                                       FlatBtn(
                                         title: Strings.signUpButton,
                                         onPressed: () {},
                                       ),
                                     ]),



                             ])
))
    ])
    )
    )
    )
    )
    ]);
  }}