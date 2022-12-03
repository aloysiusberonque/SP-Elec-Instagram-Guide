import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class UserPost extends StatelessWidget {
  String name;
  String image;
  int likes;
  UserPost(
      {Key? key, required this.likes, required this.name, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey.shade300),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(image)),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Text(
                        name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              ),
              Icon(Icons.more_vert)
            ],
          ),
        ),
        //post
        Container(
          color: Colors.grey.shade300,
          height: 400,
        ),
        Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Icon(
                      Icons.favorite,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Icon(Icons.comment),
                    ),
                    Icon(Icons.share)
                  ],
                ),
                Icon(Icons.bookmark)
              ],
            )),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: <Widget>[
              SizedBox(
                child: Row(
                  children: [
                    Container(
                      width: 30,
                      //padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Stack(
                        children: [
                          Positioned(
                              child: Container(
                            width: 15,
                            height: 15,
                            decoration: BoxDecoration(
                                color: Colors.blue, shape: BoxShape.circle),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset(
                                    'assets/images/302307484_6196175547377844_8109071300482961392_n.jpg')),
                          )),
                          Positioned(
                              left: 7,
                              child: Container(
                                width: 15,
                                height: 15,
                                decoration: BoxDecoration(
                                    color: Colors.blue, shape: BoxShape.circle),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.asset(
                                        'assets/images/305281012_1220010611890524_6919771896009000896_n.jpg')),
                              )),
                          Positioned(
                              left: 15,
                              child: Container(
                                width: 15,
                                height: 15,
                                decoration: BoxDecoration(
                                    color: Colors.blue, shape: BoxShape.circle),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.asset(image)),
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Text('liked by '),
              Text(
                'sisay',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(' and'),
              Text('${likes}', style: TextStyle(fontWeight: FontWeight.bold))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: RichText(
            softWrap: true,
            textAlign: TextAlign.start,
            text: const TextSpan(
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                      text: 'sisay',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(
                      text:
                          ' you are looking good my btother keep shining that is all i can say to you')
                ]),
          ),
        )
      ],
    );
  }
}
