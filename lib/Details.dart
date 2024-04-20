import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(Details());
}

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Stack(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: double.infinity,
                aspectRatio: 16 / 9,
                viewportFraction: 1.0,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: false,
                scrollDirection: Axis.horizontal,
              ),
              items: [
                'https://live.staticflickr.com/1498/24770889022_b2052b03b0_b.jpg',
                'https://live.staticflickr.com/1498/24770889022_b2052b03b0_b.jpg',
                'https://live.staticflickr.com/1498/24770889022_b2052b03b0_b.jpg',
                
              ].map((item) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(item),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40),
                  ),
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                height: 400,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Center(
                        child: Text(
                          'Niladri Reservoir',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Center(
                        child: Text(
                          'Tekergat, Sunamgnj',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '   Tekergat',
                          style: TextStyle(fontSize: 16.0),
                        ),
                        Spacer(),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 16.0,
                        ),
                        Text(
                          '4.7 (2498)',
                          style: TextStyle(fontSize: 14.0),
                        ),
                        Spacer(),
                        Text(
                          '\$59/Person    ',

style: TextStyle(fontSize: 14.0),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.0),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Text(
                        'About Destination',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu, arcu dictumst habitant vel ut et pellentesque. Ut in egestas blandit netus in scelerisque. Eget lectus ultrices pellentesque id.',
                        style: TextStyle(fontSize: 14.0),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Text(
                        'Facilities',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.wifi,
                            color: Colors.green,
                            size: 16.0,
                          ),
                          SizedBox(width: 4.0),
                          Text(
                            'Free Wifi',
                            style: TextStyle(fontSize: 14.0),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 4.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.pool,
                            color: Colors.lightBlue,
                            size: 16.0,
                          ),
                          SizedBox(width: 4.0),
                          Text(
                            'Pool',
                            style: TextStyle(fontSize: 14.0),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 4.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.breakfast_dining,
                            color: Colors.orange,
                            size: 16.0,
                          ),
                          SizedBox(width: 4.0),
                          Text(
                            'Breakfast',
                            style: TextStyle(fontSize: 14.0),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 4.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.lunch_dining,
                            color: Colors.brown,
                            size: 16.0,
                          ),
                          SizedBox(width: 4.0),
                          Text(
                            'Lunch',
style: TextStyle(fontSize: 14.0),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      
    );
  }
}