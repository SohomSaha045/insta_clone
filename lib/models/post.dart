import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

class Post {
  final String description;
  final String uid;
  final String username;
  final String postId;
  final  datePublished;
  final String postUrl;
  final String profImage;
  final likes;

  const Post({
    required this.description,
    required this.uid,
    required this.postUrl,
    required this.username,
    required this.datePublished,
    required this.postId,
    required this.profImage,
    required this.likes,
  });

  Map<String, dynamic> toJson() => {
        "username": username,
        "uid": uid,
        "description": description,
        "profImage": profImage,
        "likes": likes,
        "datePublished": datePublished,
        "postId": postId,  
        "postUrl": postUrl,  
      };

  static Post fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return Post(
        postUrl: snapshot['postUrl'],
        uid: snapshot['uid'],
        postId: snapshot['postId'],
        username: snapshot['username'],
        likes: snapshot['likes'],
        datePublished: snapshot['datePublished'],
        profImage: snapshot['profImage'],
        description: snapshot['description'],
        );
  }
}
