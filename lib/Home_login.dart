import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_4/categories_list.dart';
import 'package:flutter_application_4/glass_icon.dart';
import 'package:flutter_application_4/most_visited.dart';
import 'package:flutter_application_4/navigation_bar.dart';
import 'package:flutter_application_4/search_bar.dart';
import 'package:flutter_application_4/services.dart';
import 'package:flutter_application_4/text_line.dart';
import 'package:flutter_application_4/top_event.dart';

import 'package:google_nav_bar/google_nav_bar.dart';


int _selectedIndex = 0;

void main() {
  runApp(const Home_login());
}

class Home_login extends StatelessWidget {
  const Home_login({super.key});

  // This widget is the root of my application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Color.fromARGB(255, 225, 231, 225),
      body: Center(
        child: Container(
          width: 420,
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                leading: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: glass_icon(),
                ),
                expandedHeight: 220,
                pinned: true,
                flexibleSpace: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    FlexibleSpaceBar(
                      background: Container(
                        color: Color.fromARGB(255, 107, 141, 107),
                        child: Image.asset(
                          'assets/images/picture3.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: -15,
                      child: Container(
                        color: Colors.transparent, // Set your desired color
                        width: 180,

                        child: CustomSliverAppBar(),
                      ),
                    ),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                          height: 50,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Categories',
                                  style: TextStyle(
                                      fontSize: 21,
                                      fontWeight: FontWeight.w700),
                                ),
                                see_all()
                              ],
                            ),
                          )),
                      SizedBox(height: 80, child: Categories_list()),
                      SizedBox(
                          height: 50,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Most Visited',
                                  style: TextStyle(
                                      fontSize: 21,
                                      fontWeight: FontWeight.w700),
                                ),
                                see_all()
                              ],
                            ),
                          )),
                      SizedBox(height: 190, child: most_visited()),
                      SizedBox(
                          height: 50,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Services',
                                  style: TextStyle(
                                      fontSize: 21,
                                      fontWeight: FontWeight.w700),
                                ),
                                see_all()
                              ],
                            ),
                          )),
                      SizedBox(height: 60, child: services_list()),
                      SizedBox(
                          height: 50,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Top Events',
                                  style: TextStyle(
                                      fontSize: 21,
                                      fontWeight: FontWeight.w700),
                                ),
                                see_all()
                              ],
                            ),
                          )),
                      SizedBox(height: 190, child: event_list()),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: nav_bar(),
    ));
  }
}
