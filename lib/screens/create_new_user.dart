import 'package:flight_booking_app/common/Color.dart';
import 'package:flight_booking_app/common/string.dart';
import 'package:flight_booking_app/component/flatButton.dart';
import 'package:flight_booking_app/component/raisedButton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

//Creating class for creation of new account
class CreateNewUser extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CreateNewUserState();
  }
}

class CreateNewUserState extends State {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool autoValidate = false;
  bool _obscureText = true;
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  String name;
  String email;
  String password;

  void _validateInputs() {
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
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: ListView(children: [
         Padding(
              padding:
                  EdgeInsets.only(top: 70, bottom: 10, left: 10, right: 10),
              child: new Form(
                key: _formKey,
                autovalidate: autoValidate,
                child: Column(children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 30, 10, 0),
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      Strings.createAccount,
                      //setting text
                      style: GoogleFonts.spartan(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: NewColors.textBlack),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      Strings.crtacnt,
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
                    title: Text(Strings.createuserName),
                    //setting textField and validation
                    subtitle: TextFormField(
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      controller: nameController,
                      onSaved: (String val) {
                        name = val;
                      },
                    ),
                  ),
                  ListTile(
                    title: Text(Strings.createuserEmail),
                    //setting textField and validation
                    subtitle: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      validator: validateEmail,
                      onSaved: (String val) {
                        email = val;
                      },
                      controller: emailController,

                      decoration: InputDecoration(
                        suffixIcon:
                        Icon(
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
                      validator: validatePassword,
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
                                ? 'show password'
                                : 'hide password',
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 1.5,
                    child: RaisedBtn(
                        onPressed: () {
                          _validateInputs();
                        },
                        title: Strings.signUpButton),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.12,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text(
                      Strings.alreadyUser,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15),
                    ),
                    //setting of button
                    FlatBtn(
                      title: Strings.signInUser,
                      onPressed: () {},
                    ),
                  ]),
                  SizedBox(
                    height: 3.0,
                  ),
                  GestureDetector(
                    child: Text(
                      Strings.skip,
                      style:
                          TextStyle(color: NewColors.textBlack, fontSize: 15),
                      textAlign: TextAlign.center,
                    ),
                    onTap: () {},
                  )
                ]),
              ))
        ]));
  }

  //validation for email
  String validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    try {
      if (!regex.hasMatch(value))
        return 'Enter Valid Email';
      else if (value.isEmpty) {
        return ("Enter Some text");
      } else {
        return null;
      }
    }catch(e){
      throw(e);
    }
  }

  //validation for password
  String validatePassword(String value) {
    String patttern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regExp = new RegExp(patttern);
    try {
      if (value.isEmpty) {
        return "Password is Required";
      } else if (value.length < 8) {
        return "Password must minimum eight characters";
      } else if (!regExp.hasMatch(patttern)) {
        return "Password at least one uppercase letter\n one lowercase letter and one number \n at least one character";
      } else {
        return null;
      }
    } catch (e) {
      throw (e);
    }
  }
}
