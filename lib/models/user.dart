import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  String uid;
  String fname;
  String lname;
  String uname;
  String photoUrl;
  String displayName;
  String displayMessage;
  String email;
  String password;
  String bio;
  String petID;

  User(
      {this.uid,
      this.fname,
      this.lname,
      this.uname,
      this.photoUrl,
      this.displayName,
      this.displayMessage,
      this.email, 
      this.password,
      this.bio,
      this.petID,
    }
  );
  factory User.fromDocument(DocumentSnapshot doc) {
    return User(
      uid: doc['id'],
      fname: doc['firstname'],
      lname: doc['lastname'],
      uname: doc['username'],
      photoUrl: doc['photoUrl'],
      displayName: doc['displayName'],
      displayMessage: doc['displayMessage'],
      email: doc['email'],
      bio: doc['bio'],
    );
  }
}
