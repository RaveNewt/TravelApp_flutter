import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class started_Page extends StatelessWidget {
  const started_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: 375,
            height: 482,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/bg-1.png',
                ),
              ),
            ),
          ),
        ]
     )
    );
  }
}