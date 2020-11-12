import 'package:firebase_auth/firebase_auth.dart';

class User {
  String id;
  String name;
  String email;
  String image;

  User({this.id, this.name, this.email, this.image});

  User.fromSnapshot(FirebaseUser currentUser)
      : id = currentUser.uid,
        name = currentUser.displayName,
        email = currentUser.email,
        image = currentUser.photoUrl;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'image': image,
    };
  }
}
