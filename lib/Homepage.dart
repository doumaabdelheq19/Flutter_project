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
                    color: Color.fromARGB(255, 231, 243, 255),
                    height: 400.0,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text(
                  "Welcome to Elysian \n Discover. Experience. Delight.",
                  textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                ),
                          Image.asset(
                          'assets/malakdesign.png',
                          height: 300,
                        ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 60.0),
                Text(
                  "Welcome to Elysian, your ultimate guide to uncovering unforgettable experiences right at your fingertips.",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 90.0),
                SizedBox(
                  width: 350,
                  child: ElevatedButton(
                    
                    onPressed: () { Navigator.pushNamed(context, '/login');},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 6, 97, 105),
                    ),
                    child: Text('Sign In',style: TextStyle(color: Colors.white),),
                  ),
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
