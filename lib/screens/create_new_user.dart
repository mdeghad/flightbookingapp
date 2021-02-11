import 'package:flight_booking_app/common/Color.dart';
import 'package:flight_booking_app/common/string.dart';
import 'package:flight_booking_app/component/newButton.dart';
import 'package:flutter/material.dart';

//Creating class for creation of new account
class CreateNewUser extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CreateNewUserState();
  }
}

class CreateNewUserState extends State {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
         // crossAxisAlignment: CrossAxisAlignment.start,
         // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
             margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              height: MediaQuery.of(context).size.height/6,
              width: MediaQuery.of(context).size.width,
              child: Text(
                Strings.createAccount,                            //setting text
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: NewColors.textBlack),
                textAlign: TextAlign.start,
              ),
            ),
            SizedBox(height: 20,),
            ListTile(
              title: Text(Strings.createuserName),                      //setting textField
              subtitle: TextField(
                controller: nameController,
              ),
            ),
            ListTile(
              title: Text(Strings.createuserEmail),                      //setting textField
              subtitle: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.email),
                ),
              ),
            ),
            ListTile(
              title: Text(Strings.createuserPassword),                     //setting textField
              subtitle: TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.remove_red_eye_sharp),
                ),
              ),
            ),

            SizedBox(height: 30,),
            NewButton(onPressed: (){}, title: Strings.createuserAccount)
          ],
        ),
      ),
    );
  }
}
