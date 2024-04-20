import 'package:flutter/material.dart';
import 'package:flutter_application_4/Home_login.dart';
import 'package:flutter_application_4/Profile.dart';
import 'package:flutter_application_4/Saved.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'dart:io';

int _selectedIndex = 0;
var pageroute;

class nav_bar extends StatelessWidget {
  const nav_bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 420,
      decoration: BoxDecoration(
        color: Colors.white, // Background color
        boxShadow: [
          BoxShadow(
              blurRadius: 20,
              color: Color.fromARGB(255, 90, 90, 90).withOpacity(0.1))
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
        child: Container(
          width: 420,
          child: GNav(
            rippleColor: Colors.grey,
            gap: 5,
            activeColor: Color.fromARGB(255, 108, 131, 121),
            iconSize: 24,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            duration: Duration(milliseconds: 300),
            tabBackgroundColor: Color.fromARGB(255, 227, 240, 227),
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.bookmark,
                text: 'Bookmark',
              ),
              GButton(
                icon: Icons.notifications,
                text: 'Notification',
              ),
              GButton(
                icon: Icons.chat,
                text: 'Chat',
              ),
            ],
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              _selectedIndex = index;
              if(index == 0) {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Home_login()),
  );
} else  if(index == 1) {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Saved()),
  );
    }
    else  if(index == 3) {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const profile()),
  );
    }
           
              // Force rebuild of the body content
              (context as Element).markNeedsBuild();
            },
          ),
        ),
      ),
    );
  }
}
