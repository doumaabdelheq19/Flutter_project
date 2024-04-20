import 'package:flutter/material.dart';

class services_list extends StatefulWidget {
  @override
  State<services_list> createState() => _services_listState();
}

class _services_listState extends State<services_list> {
  final List<Map<String, dynamic>> services = [
    {'icon': Icons.hotel, 'service': 'Hotel'},
    {'icon': Icons.restaurant, 'service': 'Restaurant'},
    {'icon': Icons.airplanemode_active, 'service': 'Flight'},
    {'icon': Icons.directions_bus, 'service': 'Bus'},
    {'icon': Icons.directions_train, 'service': 'Train '},
    {'icon': Icons.directions_boat, 'service': 'Boat '},
    {'icon': Icons.shopping_bag, 'service': 'Shopping'},
    {'icon': Icons.local_movies, 'service': 'Cinema'},
    {'icon': Icons.explore, 'service': 'Tour Guide'},
    {'icon': Icons.spa, 'service': 'spa'},
  ];

  @override
  void initState() {
    super.initState();
  }

  int? _selectedIndex;

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: services.length,
        itemBuilder: (context, index) {
          return Container(
              margin: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
              width: 140,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        _selectedIndex == index
                            ? Color.fromARGB(255, 186, 235, 188)
                            : Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      services[index]['icon'],
                      color: Color.fromARGB(255, 129, 172, 153),
                      size: 20,
                    ),
                    Text(
                      services[index]['service'],
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    )
                  ],
                ),
              ));
        },
      ),
    );
  }
}
