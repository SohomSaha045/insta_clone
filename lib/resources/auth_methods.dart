import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone/resources/storage_methods.dart';
import 'package:insta_clone/models/user.dart' as model;

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  //
  Future<String> signUpUser({
    required String email,
    required String password,
    required String username,
    required String bio,
    required Uint8List file,
  }) async {
    String res = "Some error occured";
    try {
      if (email.isNotEmpty ||
          password.isNotEmpty ||
          username.isNotEmpty ||
          bio.isNotEmpty ||
          file != null) {
        //register the user
        UserCredential cred = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);
        // print(cred.user.displayName)
        print(cred.user!.uid);

        String photoUrl = await StorageMethods()
            .uploadImageToStrorage('profilePics', file, false);
        // add user to database
        model.User user=model.User(username: username,
          uid: cred.user!.uid,
          email: email,
          bio: bio,
          followers: [],
          following: [],
          photoUrl: photoUrl );


        await _firebaseFirestore.collection('users').doc(cred.user!.uid).set(user.toJson());
        //
        //  await _firebaseFirestore.collection('users').add({
        //     'username': username,
        //     'uid': cred.user!.uid,
        //     'email': email,
        //     'bio': bio,
        //     'followers': [],
        //     'following': [],
        //   });

        res = "success";
      }
    } catch (err) {
      res = err.toString();
    }
    return res;
  }

  // login new user
  Future<String> loginUser(
      {required String email, required String password}) async {
    String res = "Error Occured";
    try {
      if (email.isNotEmpty || password.isNotEmpty) {
        await _auth.signInWithEmailAndPassword(
            email: email, password: password);
        res = "success";
      } else {
        res = "Please enter all the feild";
      }
    } catch (e) {
      res = e.toString();
    }
    return res;
  }
}
