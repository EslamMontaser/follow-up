import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class User{
  final String uid ;

  User({@required this.uid});
}

class AuthBase {

  User _userFromFirebase (user){
    return User(uid: user.uid);
  }

  Future<void> registerWithEmailAndPassword (String email , String password) async {
    final authResult = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
    return _userFromFirebase(authResult.user);
  }

  Future<void> loginWithEmailAndPassword (String email , String password) async {
    final authResult = await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
    return _userFromFirebase(authResult.user);
  }

  Future<void> logOut () async {
    await FirebaseAuth.instance.signOut();
  }

}
