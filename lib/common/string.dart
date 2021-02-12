
// string class for all texts
class Strings {
  static const createAccount = "Create";
  static const crtacnt = "an account";
  static const signUp = "START BOOKING";
  static const splshscreenText1 = "navana";
  static const splshscreenText2 = "air";
  static const signUpButton = "SIGN UP";
  static const createuserName = "Name";
  static const createuserEmail = "Email";
  static const createuserPassword = "Password";
  static const alreadyUser = "Already have an account?";
  static const signInUser = "Sign In";
  static const skip = "Skip for Now";
  static const showPassword="show password";
  static const hidePassword="hide password";
  static const nameValidation="Please enter some text";
  static const logoImage = "assets/images/splashimg.png";
  static const List imgList = [
    'assets/images/intro1.jpg',
    'assets/images/intro2.jpg',
    'assets/images/intro3.jpg',
  ];
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
    } catch (e) {
      throw (e);
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
