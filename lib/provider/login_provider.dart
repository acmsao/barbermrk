import 'package:barbermark/modelos/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginApiClient {
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Stream<User> get onAuthStateChanged => _firebaseAuth.onAuthStateChanged
      .map((FirebaseUser currentUser) => User.fromSnapshot(currentUser));

//criar usuario
  Future<User> createUserWithEmailAndPassword(
      String email, String password, String name) async {
    try {
      final currentUser = (await _firebaseAuth.createUserWithEmailAndPassword(
              email: email, password: password))
          .user;

      var userUpdateInfo = UserUpdateInfo();
      userUpdateInfo.displayName = name;

      await currentUser.updateProfile(userUpdateInfo);
      await currentUser.reload();
      return User.fromSnapshot(currentUser);
    } catch (e) {
      print(e);
      return null;
    }
  }

//fazer login
  Future<User> signInWithEmailAndPassword(String email, String password) async {
    try {
      final currentUser = (await _firebaseAuth.signInWithEmailAndPassword(
              email: email, password: password))
          .user;
      return User.fromSnapshot(currentUser);
    } catch (e) {
      print(e);
      return null;
    }
  }

//Fazer logoff
  signOut() {
    return _firebaseAuth.signOut();
  }
}
