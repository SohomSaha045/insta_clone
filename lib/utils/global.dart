import 'package:flutter/material.dart';
import 'package:insta_clone/screens/search_scrreen.dart';

import '../screens/add_post_screen.dart';
import '../screens/feed_screen.dart';
import '../screens/profile_screen.dart';

const webScreenSize = 600;

const homeScreenIcons = [
          FeedScreen(),
          SearchScreen(),
          AddPostScreen(),
          Text('notification'),
          ProfileScreen()
  ];
