import 'dart:ui';

import 'package:flutter/material.dart';

class glass_icon extends StatelessWidget {
  const glass_icon({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Container(
        width: 30,
        height: 30,
        child: Stack(
          children: [
            //blur effect
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 5,
                sigmaY: 5,
              ),
              child: Container(),
            ),
            //gradient effect
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white.withOpacity(0.05)),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.white.withOpacity(0.4),
                        Colors.white.withOpacity(0.1),
                      ])),
            ),
            Center(
              child: Icon(
                Icons.menu,
                color: Color.fromARGB(255, 122, 122, 122),
                size: 25,
              ),
            )
            //child
          ],
        ),
      ),
    );
  }
}
