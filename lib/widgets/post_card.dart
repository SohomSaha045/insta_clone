import 'package:flutter/material.dart';
import 'package:insta_clone/utils/colors.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: mobileBackgroundColor,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16)
                .copyWith(right: 0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                      "https://firebasestorage.googleapis.com/v0/b/sohoms-insta-clone.appspot.com/o/profilePics%2F3UH1tz5ca0ZYm4UfMu3DpP2iYq03?alt=media&token=dbe58430-f882-4e91-9e3a-eafa1d0a1640"),
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ankana",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                )),
                IconButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) => Dialog(
                                child: ListView(
                                  padding:const  EdgeInsets.symmetric(vertical: 16),
                                  shrinkWrap: true,
                                  children: [
                                    'Delete',
                                  ].map(
                                    (e) =>InkWell(
                                    onTap: (){},
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 12,
                                        horizontal: 16
                                      ),
                                      child: Text(e),

                                    ),

                                  ),).toList(),
                                  ),
                                
                                ),
                              );
                    },
                    icon: Icon(Icons.more_vert))
              ],
            ),
          )
        ],
      ),
    );
  }
}
