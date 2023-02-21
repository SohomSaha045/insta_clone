import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone/screens/search_scrreen.dart';

import '../screens/add_post_screen.dart';
import '../screens/feed_screen.dart';
import '../screens/profile_screen.dart';

const webScreenSize = 600;

List<Widget> homeScreenIcons = [
          const FeedScreen(),
          const SearchScreen(),
          const AddPostScreen(),
          const Text('notification'),
          ProfileScreen(uid: FirebaseAuth.instance.currentUser!.uid,),
  ];
