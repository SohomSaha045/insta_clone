import 'package:flutter/material.dart';

class CommentCard extends StatefulWidget {
  const CommentCard({super.key});

  @override
  State<CommentCard> createState() => _CommentCardState();
}

class _CommentCardState extends State<CommentCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                "https://firebasestorage.googleapis.com/v0/b/sohoms-insta-clone.appspot.com/o/profilePics%2F3UH1tz5ca0ZYm4UfMu3DpP2iYq03?alt=media&token=dbe58430-f882-4e91-9e3a-eafa1d0a1640"),
            radius: 18,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: 'username',
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(
                      text: '  some description to enter',
                    ),
                  ])
                  ),
                  Padding(padding: const EdgeInsets.only(top: 4),
                  child: Text('23/12/21',style:TextStyle(fontSize:12,fontWeight: FontWeight.w400 ),),)
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child:const  Icon(Icons.favorite,size: 16,),
          )
        ],
      ),
    );
  }
}
