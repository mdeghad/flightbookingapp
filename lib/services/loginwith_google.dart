import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';


final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn googleSignIn = GoogleSignIn();

// background method for sign in

Future<String> signInWithGoogle() async {

  try{
final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
final GoogleSignInAuthentication googleSignInAuthentication =
await googleSignInAccount.authentication;

final AuthCredential credential = GoogleAuthProvider.getCredential(
accessToken: googleSignInAuthentication.accessToken,
idToken: googleSignInAuthentication.idToken,
);

final AuthResult authResult = await _auth.signInWithCredential(credential);
// Firabase User class in  this class Googe Sign in
final FirebaseUser user = authResult.user;
print(user);
assert(!user.isAnonymous);
assert(await user.getIdToken() != null);

final FirebaseUser currentUser = await _auth.currentUser();
assert(user.uid == currentUser.uid);

return 'signInWithGoogle succeeded: $user';
}catch(exception){
    throw(exception);
  }
}
void signOutGoogle() async{
  await googleSignIn.signOut();

  print("User Sign Out");
}

