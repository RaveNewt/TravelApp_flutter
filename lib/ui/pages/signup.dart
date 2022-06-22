import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Text(
          'Join our Travel\nJourney with us',
          style: textBlack.copyWith(
            fontSize: 28,
            fontWeight: boldbold,
          ),
        ),
      );
    }

    Widget inputSection() {
      Widget nameInput() {
        return Container(
            margin: EdgeInsets.only(bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Full Name',
                  style: textPurple.copyWith(
                    fontSize: 14,
                    fontWeight: semiBold,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                TextField(
                  cursorColor: primaryColor,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'Your full name',
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: primaryColor,
                      ),
                    ),
                  ),
                ),
              ],
            ));
      }

      Widget emailInput() {
        return Container(
            margin: EdgeInsets.only(bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Email',
                  style: textPurple.copyWith(
                    fontSize: 14,
                    fontWeight: semiBold,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                TextField(
                  cursorColor: primaryColor,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'xxxxx@gmail.com',
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: primaryColor,
                      ),
                    ),
                  ),
                ),
              ],
            ));
      }

      Widget passwordInput() {
        return Container(
            margin: EdgeInsets.only(bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Password',
                  style: textPurple.copyWith(
                    fontSize: 14,
                    fontWeight: semiBold,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                TextField(
                  cursorColor: primaryColor,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'Your password',
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: primaryColor,
                      ),
                    ),
                  ),
                ),
              ],
            ));
      }

      Widget hobbyInput() {
        return Container(
            margin: EdgeInsets.only(bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Your Hobby',
                  style: textPurple.copyWith(
                    fontSize: 14,
                    fontWeight: semiBold,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                TextField(
                  cursorColor: primaryColor,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'Photography',
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: primaryColor,
                      ),
                    ),
                  ),
                ),
              ],
            ));
      }

      Widget submitButton() {
        return Container(
          width: double.infinity,
          height: 48,
          child: TextButton(
            style: TextButton.styleFrom(
                backgroundColor: primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )),
            onHover: (value) {
              setState(() {
                activeColor = value ? primaryColor : redColor;
              });
            },
            onPressed: () {},
            child: Text(
              'Sign Up',
              style: textWhite.copyWith(
                fontSize: 20,
                fontWeight: bold,
              ),
            ),
          ),
        );
      }

      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            nameInput(),
            emailInput(),
            passwordInput(),
            hobbyInput(),
            SizedBox(
              height: 20,
            ),
            submitButton()
          ],
        ),
      );
    }

    Widget signButton() {
      return Row(
        children: [
          Text(
            'Already have an account?',
            style: textBlack.copyWith(
              fontSize: 14,
              fontWeight: semiBold,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/sign-in');
            },
            child: Text(
              ' Sign In',
              style: textPurple.copyWith(
                fontSize: 14,
                fontWeight: semiBold,
              ),
            ),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: ListView(
            padding: EdgeInsets.symmetric(
              horizontal: 24,
            ),
            children: [
              title(),
              inputSection(),
              SizedBox(
                height: 12,
              ),
              signButton()
            ]),
      ),
    );
  }
}
