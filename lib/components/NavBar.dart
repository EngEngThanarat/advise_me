import 'package:advise_me/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: kPrimaryColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
          child: GNav(
              backgroundColor: kPrimaryColor,
              color: Colors.white,
              activeColor: Colors.white,
              tabBackgroundColor: Colors.blue.shade800,
              gap: 8,
              onTabChange: (index) {
                print(index);
              },
              padding: const EdgeInsets.all(10),
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.chat_bubble,
                  text: "Chat",
                ),
                GButton(icon: Icons.date_range, text: "Appointment"),
                GButton(icon: Icons.settings, text: "Setting"),
              ]),
        ),
      ),
    );
  }
}
