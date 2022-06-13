import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class started_Page extends StatelessWidget {
  const started_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          'assets/bg-1.png',
        ),
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: Text(
            'Let’s Travel \nThe World With Us',
            style: textBlack.copyWith(
              fontSize: 28,
              fontWeight: boldbold,
            ),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: Text(
            'Enjoy your vacations with amazing\nlightseeing over the world\nEnjoy the best Experience with us ',
            style: textBlack.copyWith(
              fontSize: 14,
              fontWeight: medium,
            ),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: ElevatedButton.icon(
            onPressed: () {},
            label: Icon(
              Icons.arrow_right_alt,
              color: whiteColor,
            ),
            icon: Text(
              'Let\'s Go',
              style: textWhite.copyWith(
                fontSize: 14,
                fontWeight: regular,
              ),
            ),
            style: TextButton.styleFrom(
              backgroundColor: primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
