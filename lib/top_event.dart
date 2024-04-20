import 'package:flutter/material.dart';

class event_list extends StatelessWidget {
  final List<Map<String, dynamic>> events = [
    {
      'image': 'assets/images/casbah.jpg',
      'name': 'kasbah of algiers',
    },
    {
      'image': 'assets/images/hamma_garden.jpg',
      'name': 'El-Hamma garden',
    },
    {
      'image': 'assets/images/notre_dame_d_afrique.jpg',
      'name': 'Notre Dame Afrique',
    },
    {
      'image': 'assets/images/algeirs_waterfront.jpg',
      'name': 'Algeirs waterfront',
    },
    {
      'image': 'assets/images/le_bastion.jfif',
      'name': 'Le Bastion site',
    },
    {
      'image': 'assets/images/casbah_museum.jfif',
      'name': 'Casbah museum',
    },
    {
      'image': 'assets/images/martyrs_memorial.jfif',
      'name': 'Martyrs_memorial',
    },
    {
      'image': 'assets/images/old_town_dellys.jfif',
      'name': 'Old Town Dellys',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: events.length,
        itemBuilder: (context, index) {
          return Container(
            width: 165,
            height: 180,
            margin: EdgeInsets.symmetric(horizontal: 3.0),
            child: Stack(children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.3), BlendMode.darken),
                  child: Image.asset(
                    events[index]['image'],
                    width: 150,
                    height: 180,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                  bottom: 10,
                  left: 5,
                  child: Text(
                    events[index]['name'],
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 16),
                  ))
            ]),
          );
        },
      ),
    );
  }
}
