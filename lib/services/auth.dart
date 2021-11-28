import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // signin anon
  Future signInAnon() async {
    try {
      // FirebaseUser user = (await _auth.signInAnonymously()).user;
      UserCredential userCredential = await _auth.signInAnonymously();
      return userCredential.user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
