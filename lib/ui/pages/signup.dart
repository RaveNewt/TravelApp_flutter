import 'package:flutter/material.dart';
import 'package:travel_app/ui/pages/mainHome.dart';
import 'package:travel_app/ui/widgets/CustomButton.dart';
import 'package:travel_app/ui/widgets/CustomTextField.dart';
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
        return CustomTextField(
          title: 'Full Name',
          hintText: 'Your full name',
          obscureText: false,
        );
      }

      Widget emailInput() {
        return CustomTextField(
          title: 'Email',
          hintText: 'xxx@gmail.com',
          obscureText: false,
        );
      }

      Widget passwordInput() {
        return CustomTextField(
          title: 'Password',
          hintText: 'Your Password',
          obscureText: true,
        );
      }

      Widget hobbyInput() {
        return CustomTextField(
            title: 'Hobby', hintText: 'fill your hooby', obscureText: false);
      }

      Widget submitButton() {
        return CustomButton(
            title: 'Sign Up',
            onPressed: () {
              Navigator.pushNamed(context, '/nav');
            });
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
