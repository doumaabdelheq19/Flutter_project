import 'package:flutter/material.dart';
import 'package:flutter_application_4/navigation_bar.dart';

void main() {
  runApp(const Saved());
}
class Saved extends StatelessWidget {
  const Saved({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold( appBar: AppBar(
        centerTitle: true,
      leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
              },
            ),
       title: Text("Saved", style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.w600
       )),
      backgroundColor: Colors.grey[50], ),
      
        body: 
      ListView(
        children:[ Container(
          color: Colors.grey[50],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
              Padding(padding: EdgeInsets.only(left: 20),
                child: Align(alignment: Alignment.centerLeft,
                  child: Text("Places",style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.w600)),
                ),
              ),
              mycontainer(path: 'assets/bob.png', place: "Boumerdes, boumerdes", name: "McBob", rating: "4.5"),
               mycontainer(path: 'assets/bob.png', place: "Boumerdes", name: "McBob", rating: "4.5"),
                mycontainer(path: 'assets/bob.png', place: "Boumerdes,", name: "McBob", rating: "4.5"),
                 mycontainer(path: 'assets/bob.png', place: "Boumerdes,", name: "McBob", rating: "4.5"),
                  mycontainer(path: 'assets/bob.png', place: "Boumerdes,", name: "McBob", rating: "4.5"),
                   mycontainer(path: 'assets/bob.png', place: "Boumerdes", name: "McBob", rating: "4.5"),
                    mycontainer(path: 'assets/bob.png', place: "Boumerdes,", name: "McBob", rating: "4.5"),
              
          
            ],
          ),
        ),
      ]),
       bottomNavigationBar: nav_bar(),
    )
    );
  }
}

class mycontainer extends StatefulWidget {
  final String path;
  final String place;
  final String name;
  final String rating;
  const mycontainer({
    required this.path,
    required this.place,
    required this.name,
    required this.rating,

    Key?key,
  }): super( key:key);
  @override
  State<mycontainer> createState() => _mycontainerState();
}

class _mycontainerState extends State<mycontainer> {
   bool _isPressed = false; 

  void _onPressed() {
    setState(() {
      _isPressed = !_isPressed; 
    });
  }
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(10),
      child: Container(
         height: 100,
          width:MediaQuery.of(context).size.width * 0.9,
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            boxShadow:[ BoxShadow(
      color: Colors.grey.withOpacity(0.1), 
      spreadRadius: 5, 
      blurRadius: 5, 
      offset: Offset(0, 2),
    ),],
            color: Colors.white,
            borderRadius: BorderRadius.circular(13)
          ),
        child: Row( 
          children: [
          Padding(padding: EdgeInsets.all(8),
            child: Container(
              height:70,
            width:70,
              
              
               decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20)
               ),
              child: 
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(widget.path,
                            fit: BoxFit.cover,),
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
             height:MediaQuery.of(context).size.height * 0.1,
            width:MediaQuery.of(context).size.width * 0.5,

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(widget.name,
                 style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                  fontWeight: FontWeight.w500)),
                Row(
                  children:[
                  
                  Icon(Icons.place_outlined,
                  color: Color.fromARGB(255, 112, 139, 155),
                  size: 20,),
                  Text(widget.place,
                   style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey[500],
                  fontWeight: FontWeight.w500)),
                ]
                ),
                Row(  
                  children: [
                  Icon(Icons.star,
                  color: Color.fromARGB(255, 112, 139, 155),
                  size: 20,),
                  Text(widget.rating, style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
                ],)
                
              ],
            ),
          ),  
          IconButton(onPressed:() {_onPressed();},
                    icon: _isPressed ?   Icon( Icons.bookmark ,
                    color: Color.fromARGB(255, 112, 139, 155),
                    size:25,): Icon( Icons.bookmark_border ,
                    color: Color.fromARGB(255, 112, 139, 155),
                    size:25,))
        
        ],
      
          
        ),
      ),
    );
  }
}

