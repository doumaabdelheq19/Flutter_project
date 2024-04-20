import 'package:flutter/material.dart';

class Categories_list extends StatelessWidget {
  final List<Map<String, dynamic>> categories = [
    {'icon': Icons.terrain, 'label': 'Montains'},
    {'icon': Icons.beach_access, 'label': 'Beach'},
    {'icon': Icons.location_city, 'label': 'City'},
    {'icon': Icons.nature_people, 'label': 'park'},
    {'icon': Icons.account_balance, 'label': 'Historical site'},
    {'icon': Icons.museum, 'label': 'Museum'},
    {'icon': Icons.park, 'label': 'Forest'},
    {'icon': Icons.water, 'label': 'Lakes'},
    {'icon': Icons.landscape, 'label': 'Landscape'},
    {'icon': Icons.fireplace, 'label': 'Forest'},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Container(
            width: 70,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.9),
                      blurRadius: 5,
                      spreadRadius: -2)
                ],
                color: Colors.white),
            margin: EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  categories[index]['icon'],
                  color: Color.fromARGB(255, 129, 172, 153),
                ),
                Text(
                  categories[index]['label'],
                  textAlign: TextAlign.center,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
