// import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:instagramuiclone/utils/account_tab1.dart';
import 'package:instagramuiclone/utils/account_tab2.dart';
import 'package:instagramuiclone/utils/account_tab3.dart';
import 'package:instagramuiclone/utils/account_tab4.dart';
import 'package:instagramuiclone/utils/bubble_stories.dart';

// import 'package:url_launcher/url_launcher.dart';

class UserAccount extends StatelessWidget {
  String name;
  UserAccount({Key? key, required this.name}) : super(key: key);
  // final Uri _url = Uri.parse('https://flutter.dev');
  // Future<void> _launchUrl() async {
  //   if (!await launchUrl(_url)) {
  //     throw 'Could not launch $_url';
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade500,
                            shape: BoxShape.circle),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text('12',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                Text('posts')
                              ],
                            ),
                            Column(
                              children: [
                                Text('1203',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                Text('followers')
                              ],
                            ),
                            Column(
                              children: [
                                Text('122',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                Text('following')
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Aloysius Matthew A. Beronque',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Padding(
                          padding: const EdgeInsets.only(top: 3),
                          child: Text(
                              'Life is hard, but I am harder',
                              style: TextStyle(fontStyle: FontStyle.italic)),
                        ),
                        InkWell(
                          splashColor: Colors.blue,
                          child: Text('https://www.instagram.com/al.beronque/',
                              style: TextStyle(color: Colors.blue)),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: TextButton(
                              style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  minimumSize: Size(50, 30),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      side: BorderSide(color: Colors.grey)),
                                  primary: Colors.grey),
                              onPressed: () {},
                              child: Center(child: Text('Edit profile'))),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: TextButton(
                              style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  minimumSize: Size(50, 30),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      side: BorderSide(color: Colors.grey)),
                                  primary: Colors.grey),
                              onPressed: () {},
                              child: Center(child: Text('add tools'))),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: TextButton(
                              style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  minimumSize: Size(50, 30),
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      side: BorderSide(color: Colors.grey)),
                                  primary: Colors.grey),
                              onPressed: () {},
                              child: Center(child: Text('insights'))),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      HighLightStoies(
                        text: 'story 1',
                      ),
                      HighLightStoies(
                        text: 'story 2',
                      ),
                      HighLightStoies(
                        text: 'story 3',
                      ),
                      HighLightStoies(
                        text: 'story 4',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            TabBar(
              indicatorColor: Colors.black,
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.grid_3x3_outlined,
                    color: Theme.of(context).iconTheme.color,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.video_call,
                    color: Theme.of(context).iconTheme.color,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.shop,
                    color: Theme.of(context).iconTheme.color,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.person,
                    color: Theme.of(context).iconTheme.color,
                  ),
                )
              ],
            ),
            Expanded(
              child: TabBarView(children: [
                AccountTab1(),
                AccountTab2(),
                AccountTab3(),
                AccountTab4()
              ]),
            )
          ]),
        ),
      ),
    );
  }
}
