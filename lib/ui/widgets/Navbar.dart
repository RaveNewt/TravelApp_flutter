import 'package:flutter/material.dart';
import 'package:travel_app/ui/pages/booking.dart';
import 'package:travel_app/ui/pages/card.dart';
import 'package:travel_app/ui/pages/mainHome.dart';
import 'package:travel_app/ui/pages/profile.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import '../../shared/theme.dart';

class Navbar extends StatefulWidget {
  Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  int _selectedIndex = 0;

  static final List<Widget> _NavScreen = <Widget>[
    MainHome(),
    Booking(),
    CardNav(),
    Profile(),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Navbar'),
      ),
      body: Center(child: _NavScreen.elementAt(_selectedIndex)),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: whiteColor, boxShadow: [
          BoxShadow(blurRadius: 20, color: primaryColor.withOpacity(0.5))
        ]),
        child: SafeArea(
            child: GNav(
          rippleColor: blackColor,
          hoverColor: primaryColor.withOpacity(0.6),
          gap: 6,
          activeColor: primaryColor,
          duration: Duration(milliseconds: 300),
          color: blackColor,
          tabBackgroundColor: primaryColor.withOpacity(0.3),
          tabs: [
            GButton(
              icon: LineIcons.globe,
              text: 'World',
            ),
            GButton(
              icon: LineIcons.heart,
              text: 'Favorite',
            ),
            GButton(
              icon: LineIcons.creditCard,
              text: 'Card',
            ),
            GButton(
              icon: LineIcons.user,
              text: 'Profile',
            ),
          ],
          selectedIndex: _selectedIndex,
          onTabChange: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        )),
      ),
    );
  }
}
