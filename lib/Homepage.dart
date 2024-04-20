import 'package:flutter/material.dart';

void main() {
  runApp(Homepage());
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Center(
          child: Align(
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ClipPath(
                  clipper: BottomClipper(),
                  child: Container(
                    color: Color.fromARGB(255, 181, 217, 255),
                    height: 400.0,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            "data:image/jp",
                            height: 50,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  "Lorem ipsum dolor sit amet,\nconsecteur adipiscing elit,",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () { Navigator.pushNamed(context, '/login');},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 6, 97, 105),
                  ),
                  child: Text('Sign In'),
                ),
                SizedBox(height: 2.0),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Log in as a Guest',
                    style: TextStyle(
                      color: Color.fromARGB(255, 6, 97, 105),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
     
    );
  }
}

class BottomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 2, size.height - 20, size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}