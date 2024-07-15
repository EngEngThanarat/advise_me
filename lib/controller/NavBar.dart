import 'package:advise_me/components/constants.dart';
import 'package:advise_me/controller/nav_bar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bottomNavigationBarController controller =
        Get.put(bottomNavigationBarController());
    return Scaffold(
      bottomNavigationBar: GNav(
          backgroundColor: kPrimaryColor,
          color: Colors.white,
          activeColor: Colors.white,
          tabBackgroundColor: Colors.blue.shade800,
          tabBorderRadius: 40,
          gap: 8,
          tabMargin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          onTabChange: (index) {
            print(index);
            controller.index.value = index;
          },
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
      body: Obx(() => controller.pages[controller.index.value]),
    );
  }
}
