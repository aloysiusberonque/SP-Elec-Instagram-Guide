import 'package:flutter/material.dart';
import 'package:instagramuiclone/utils/shop_grid.dart';

import '../utils/ExploreGrid.dart';

class UserShop extends StatelessWidget {
  const UserShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('shop',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                Row(
                  children: [
                    Icon(
                      Icons.calendar_today,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Icon(
                      Icons.menu,
                      color: Colors.black,
                    )
                  ],
                )
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              height: 40,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                      floatingLabelAlignment: FloatingLabelAlignment.center,
                      contentPadding: EdgeInsets.all(8),
                      // contentPadding:
                      //     EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      labelStyle:
                          TextStyle(color: Colors.grey.shade500, height: 20),
                      label: Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 0),
                          child: Row(children: [
                            Icon(
                              Icons.search,
                              color: Colors.grey.shade500,
                            ),
                            Text('search')
                          ]),
                        ),
                      ),
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Colors.grey.shade300),
                ),
              ),
            ),
          ],
        ),
      ),
      body: ShopGrid(),
    );
  }
}
