import 'package:flight_booking_app/common/newColor.dart';
import 'package:flight_booking_app/common/string.dart';
import 'package:flutter/material.dart';


//Creating class for creation of new account
class CreateNewUser extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
return CreateNewUserState();
  }

}

class CreateNewUserState extends State{
  final nameController=TextEditingController();
  final emailController=TextEditingController();
  final passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
            body: Container(
              child: Column(
                children: [
                  Text(Strings.createAccount,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: NewColors.textBlack),),

                ListTile(
              title: Text(Strings.createuserName),
                  subtitle: TextField(
                    controller: nameController,
                  ),
                ),

                  ListTile(
                    title: Text(Strings.createuserEmail),
                    subtitle: TextField(
                      controller: emailController,
                    ),
                    trailing: Icon(Icons.email),
                  ),

                  ListTile(
                    title: Text(Strings.createuserPassword),
                    subtitle: TextField(
                      controller: passwordController,
                    ),
                    trailing: Icon(Icons.remove_red_eye_sharp),
                  ),
                ],
              ),
            ),
    );

  }


}