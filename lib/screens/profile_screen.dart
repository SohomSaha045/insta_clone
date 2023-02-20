import 'package:flutter/material.dart';
import 'package:insta_clone/utils/colors.dart';

import '../widgets/follow_button.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mobileBackgroundColor,
        title: Text('username'),
        centerTitle: false,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      backgroundImage: NetworkImage(
                        "https://firebasestorage.googleapis.com/v0/b/sohoms-insta-clone.appspot.com/o/posts%2FW5jeqVnko3SAiKy5xhJqg3ewWdw1%2Ffe27a9c0-b147-11ed-8d78-6950c43dad92?alt=media&token=93d91402-c1b6-4373-b294-03dde8698d07",
                      ),
                      radius: 40,
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              buildStatColumn(20, 'posts'),
                              buildStatColumn(200, 'followers'),
                              buildStatColumn(120, 'following'),
                            ],
                          ),
                            Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FollowButton(
                          text: 'Edit Profile Button',
                          backgroundColor: mobileBackgroundColor,
                          textColor: primaryColor,
                          borderColor: Colors.grey,
                          function: (){},
                        ),
                      ],
                    )
                        ],
                      ),
                      
                    ),
                  
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Column buildStatColumn(int num, String lable) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          num.toString(),
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 4),
          child: Text(
            lable,
            style: const TextStyle(
                fontSize: 15, fontWeight: FontWeight.w400, color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
