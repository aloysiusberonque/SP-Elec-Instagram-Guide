import 'dart:ui';
import 'package:flutter/material.dart';

class AccountTab4 extends StatelessWidget {
  const AccountTab4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 20,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              color: Colors.green.shade100,
            ),
          );
        });
  }
}
