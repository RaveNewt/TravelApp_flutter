import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class CardNav extends StatefulWidget {
  CardNav({Key? key}) : super(key: key);

  @override
  State<CardNav> createState() => _CardNavState();
}

class _CardNavState extends State<CardNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Card')),
    );
  }
}