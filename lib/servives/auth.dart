import 'package:firebase_auth/firebase_auth.dart';
import 'package:SignIn/models/user.dart';

class AuthService {
  // todo:

  final FirebaseAuth _auth = FirebaseAuth.instance;

  // create user obj from FirebaseUser
  User _userFromFirebaseUser(FirebaseUser user) {
    return User != null ? User(uid: user.uid) : null;
  }

  // Auth change user stream
  Stream<User> get user {
    return _auth.onAuthStateChanged
        //.map((FirebaseUser user) => _userFromFirebaseUser(user));
        .map(_userFromFirebaseUser);
  }

  // 1: Sign in anonymously
  Future signInAnon() async {
    try {
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
  // 2: Sign in with email and Password

  //3: Register with Email and Password

  //4: Signout

}
