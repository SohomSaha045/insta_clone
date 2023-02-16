import 'package:flutter/material.dart';
import 'package:insta_clone/utils/colors.dart';

import '../widgets/comment_card.dart';

class Comments extends StatefulWidget {
  const Comments({super.key});

  @override
  State<Comments> createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mobileBackgroundColor,
        title: const Text('Comments'),
        centerTitle: false,
      ),
      body: CommentCard(),
      bottomNavigationBar: SafeArea(
          child: Container(
        height: kToolbarHeight,
        margin:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        padding: EdgeInsets.only(left: 16, right: 8),
        child: Row(
        
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage("https://firebasestorage.googleapis.com/v0/b/sohoms-insta-clone.appspot.com/o/profilePics%2F3UH1tz5ca0ZYm4UfMu3DpP2iYq03?alt=media&token=dbe58430-f882-4e91-9e3a-eafa1d0a1640"),
              radius: 18,

            ),
            Expanded(
              child: Padding(
                
                padding: const EdgeInsets.only(left:16,right: 8),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Comment as usename',
                    border: InputBorder.none
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: (){},
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 8) ,
                child: const Text('Post',style: TextStyle(color: blueColor),),
              ),
            )
          ],
        ),
      )),
    );
  }
}
