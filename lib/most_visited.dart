import 'package:flutter/material.dart';
import 'package:flutter_application_4/Details.dart';

class most_visited extends StatelessWidget {
  final List<Map<String, dynamic>> images = [
    {
      'image': 'assets/images/casbah.jpg',
      'name': 'kasbah of algiers',
      'rating': '4.7'
    },
    {
      'image': 'assets/images/hamma_garden.jpg',
      'name': ' El-Hamma Garden',
      'rating': '4.8'
    },
    {
      'image': 'assets/images/notre_dame_d_afrique.jpg',
      'name': 'Notre Dame Afrique',
      'rating': '4.6'
    },
    {
      'image': 'assets/images/algeirs_waterfront.jpg',
      'name': 'Algeirs waterfront',
      'rating': '4.7'
    },
    {
      'image': 'assets/images/le_bastion.jfif',
      'name': 'Le Bastion site',
      'rating': '4.6'
    },
    {
      'image': 'assets/images/casbah_museum.jfif',
      'name': 'Casbah museum',
      'rating': '4.7'
    },
    {
      'image': 'assets/images/martyrs_memorial.jfif',
      'name': 'Martyrs_memorial',
      'rating': '4.8'
    },
    {
      'image': 'assets/images/old_town_dellys.jfif',
      'name': 'Old Town Dellys',
      'rating': '4.6'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {                          
 Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Details()),
  );
  }, 
            child: Container(
              
              width: 200,
              height: 180,
              margin: EdgeInsets.symmetric(horizontal: 3.0),
              child: Stack(children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: ColorFiltered(
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.3), BlendMode.darken),
                    child: Image.asset(
                      images[index]['image'],
                      width: 190,
                      height: 180,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 5,
                  left: 5,
                  child: Row(
                    children: [
                      Icon(size: 18, Icons.star, color: Colors.white),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        images[index]['rating'],
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                      ),
                      SizedBox(
                        width: 110,
                      ),
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.bookmark,
                            size: 18,
                            color: Color.fromARGB(255, 129, 172, 153),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                    bottom: 10,
                    left: 5,
                    child: Column(
                      children: [
                        Text(
                          images[index]['name'],
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              fontSize: 18),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.place,
                              size: 16,
                              color: Color.fromARGB(255, 129, 172, 153),
                            ),
                            Text(
                              images[index]['name'],
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 14),
                            ),
                          ],
                        ),
                      ],
                    ))
              ]),
            ),
          );
        },
      ),
    );
  }
}
