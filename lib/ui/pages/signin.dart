import 'package:flutter/material.dart';
import 'package:travel_app/ui/widgets/CustomButton.dart';
import 'package:travel_app/ui/widgets/CustomTextField.dart';
import '../../shared/theme.dart';

class SignIn extends StatefulWidget {
  SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
      Widget emailInput() {
        return CustomTextField(
            title: 'Email', hintText: 'Your email', obscureText: false);
      }

      Widget passwordInput() {
        return CustomTextField(
            title: 'Password', hintText: 'Your password', obscureText: true);
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
            emailInput(),
            passwordInput(),
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
            'Don\'t have an account?',
            style: textBlack.copyWith(
              fontSize: 14,
              fontWeight: semiBold,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/sign-up');
            },
            child: Text(
              ' Sign Up',
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
