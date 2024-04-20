import 'package:flutter/material.dart';

class see_all extends StatelessWidget {
  const see_all({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        'See all',
        style:
            TextStyle(color: Color.fromARGB(255, 49, 107, 51), fontSize: 15),
      ),
      style: TextButton.styleFrom(
          elevation: 5.0,
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0)),
    );
  }
}
