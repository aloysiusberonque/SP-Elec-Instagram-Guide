import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:instagramuiclone/utils/bubble_stories.dart';
import 'package:instagramuiclone/utils/user_posts.dart';

class UserHome extends StatelessWidget {
  const UserHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Users> users = [
      Users(like: 400, name: 'tarik', image: 'assets/images/tarik teshome.jpg'),
      Users(
        like: 332,
        name: 'sisay',
        image:
            'assets/images/302307484_6196175547377844_8109071300482961392_n.jpg',
      ),
      Users(
        like: 120,
        name: 'zelalem',
        image:
            'assets/images/305988167_557900822804249_2187242437538528585_n.jpg',
      ),
      Users(
          like: 140, name: 'etetye', image: 'assets/images/tarik teshome.jpg'),
      Users(
        like: 1032,
        name: 'teshe',
        image:
            'assets/images/305988167_557900822804249_2187242437538528585_n.jpg',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text('Instagram'),
          Row(
            children: [
              Icon(Icons.add),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Icon(Icons.favorite)),
              Icon(Icons.share)
            ],
          )
        ]),
      ),
      body: Column(children: [
        //Stories
        Container(
            height: 130,
            child: ListView.builder(
                itemCount: users.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return BubbleStories(
                    text: users[index].name,
                    image: users[index].image,
                  );
                })),
        //posts
        Expanded(
          child: ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                return UserPost(
                  name: users[index].name,
                  image: users[index].image,
                  likes: users[index].like,
                );
              }),
        )
      ]),
    );
  }
}

class Users {
  String name;
  String image;
  int like;

  Users({required this.like, required this.name, required this.image});
}
