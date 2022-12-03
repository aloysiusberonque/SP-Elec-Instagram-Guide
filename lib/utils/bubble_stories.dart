import 'package:flutter/material.dart';

class BubbleStories extends StatelessWidget {
  String image;
  String text;
  BubbleStories({Key? key, required this.text, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            width: 70,
            height: 70,
            decoration: BoxDecoration(
                color: Colors.grey,
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    // begin: Alignment.topLeft,
                    // end: Alignment.bottomRight,
                    //tileMode: TileMode.repeated,
                    colors: [
                      Colors.red.shade800,
                      Colors.blue.shade600,
                      Colors.yellow.shade900
                    ])),
            child: Container(
              alignment: Alignment.center,
              width: 65,
              height: 65,
              decoration: BoxDecoration(shape: BoxShape.circle),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.asset(
                    image,
                    fit: BoxFit.fill,
                    width: 40,
                    height: 50,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(text)
        ],
      ),
    );
  }
}

class HighLightStoies extends StatelessWidget {
  String text;
  HighLightStoies({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            width: 70,
            height: 70,
            decoration: BoxDecoration(shape: BoxShape.circle),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  color: Colors.grey.shade500,
                )),
          ),
          SizedBox(
            height: 5,
          ),
          Text(text)
        ],
      ),
    );
  }
}
