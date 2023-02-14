import 'package:flutter/material.dart';
import 'package:insta_clone/utils/colors.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: mobileBackgroundColor,
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal:0),
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
            //Image Section
            
          ),
          Container(padding:EdgeInsets.only(top: 5),),
          SizedBox(
              height: MediaQuery.of(context).size.height*0.40,
              width: double.infinity,
              child: Image.network('https://firebasestorage.googleapis.com/v0/b/sohoms-insta-clone.appspot.com/o/profilePics%2F3UH1tz5ca0ZYm4UfMu3DpP2iYq03?alt=media&token=dbe58430-f882-4e91-9e3a-eafa1d0a1640',fit: BoxFit.cover,),
              ),
              // LIke Comment section

            Row(
              children: [
                IconButton(
                  onPressed: (){},
                   icon: const Icon(Icons.favorite,color: Colors.red,
                   ),
                  ),
                IconButton(
                  onPressed: (){},
                   icon: const Icon(Icons.comment_outlined,
                   ),
                  ),
                IconButton(
                  onPressed: (){},
                   icon: const Icon(Icons.send,
                   ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: IconButton(
                        icon:const Icon(Icons.bookmark_border),
                        onPressed: (){},
                      ),
                  )
                  )
              ],
            ),
            //Description and number of cmments
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 16
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DefaultTextStyle(
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.w800
                    ),
                    child: Text('1,231 likes',style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(top: 8),
                    child: RichText(
                      text:TextSpan(
                        style: const TextStyle(
                          color: primaryColor
                        ),children: [
                          TextSpan(
                          text: 'Ankana',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                          TextSpan(
                          text: '  Sexy AFFFF !!!!...',
                          // style: TextStyle(
                          //   fontWeight: FontWeight.bold,
                          // ),
                        ),
                        ]
                      )
                      ),
                  ),
                  InkWell(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 4),
                      child: Text('View all 200 comments',style: TextStyle(
                        fontSize: 16,
                        color: secondaryColor,
                  
                  
                      ),),
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 4),
                      child: Text('22 December',style: TextStyle(
                        fontSize: 14,
                        color: secondaryColor,
                  
                  
                      ),))

                ],
              ),
            )
        ],
      ),
    );
  }
}
