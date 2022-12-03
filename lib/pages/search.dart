import 'package:flutter/material.dart';
import 'package:instagramuiclone/utils/ExploreGrid.dart';

class UserSearch extends StatelessWidget {
  const UserSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 40,
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
            )),
      ),
      body: ExploreGrid(),
    );
  }
}
