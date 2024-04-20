
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
double progress =0;
void main() {
  runApp(const Interest());
} 
class Interest extends StatefulWidget {
  const Interest({super.key});

  @override
  State<Interest> createState() => _MyAppState();
}

class _MyAppState extends State<Interest> {
  double progress =0;
  int count =0;
  void change(bool _isChecked) {
    setState(() {
      count += _isChecked ? 1 : -1;
      progress = (count/5).clamp(0.0, 1.0);
    });
  }
 




  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Choose your interest',
            style: TextStyle(
            fontSize:22,
            color:Colors.black,
            fontWeight: FontWeight.bold)),
          ),
          leading: 
            IconButton(
            icon: Icon(Icons.arrow_back
            ,color: Color.fromARGB(200,2, 72, 115),
                    size: 30),
            onPressed: () {
          
            },
          ),
          actions: [
            TextButton(onPressed: () {Navigator.pushNamed(context, '/home');
  },
  child: Text('skip',
 style: TextStyle(
  color: Color.fromARGB(200,2, 72, 115),
 fontSize:18,
fontWeight: FontWeight.w500
  ))

            )
          ],
          
        ),
        body: 
      Padding(padding: EdgeInsets.only(bottom: 10),
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Container(
              alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 0.8 ,
                
                      height: MediaQuery.of(context).size.height * 0.05,
              child: LinearPercentIndicator(
                    width:MediaQuery.of(context).size.width * 0.8 ,
                    lineHeight: 15.0,
                    percent: progress,
                    backgroundColor: Colors.grey[300],
                    progressColor: const Color.fromARGB(255,2, 72, 115),
                    barRadius: const Radius.circular(10)
                  ),
            ),
           Expanded(
             child: ListView(
               children: [
                 interest(onImageChecked: change,
                 count: count ,),
             ]),
           ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.9 ,
          child: Padding(padding: EdgeInsets.only(top: 10),
            child: ElevatedButton(onPressed: () {
                 Navigator.pushNamed(context, '/home');
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: const Color.fromARGB(255,2, 72, 115), 
                   
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), 
                  ),
                ),
                child: Text(
                  'Save',
                  style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.w400), 
                ),),
          ),
        )
        ]),
      )
   
    );
  }
}


class interest extends StatelessWidget {
  final Function(bool) onImageChecked;
  final int count;
  
  const interest({
    super.key,
    required this.onImageChecked,
    required this.count
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            mycolumn(text: "Outdoor Feasts", path: "assets/images/picnic.jpg",
            onChecked: onImageChecked,changeFunction: onImageChecked ,
            count :count 
            ),
            mycolumn(text: "Sandy Shores", path: "assets/images/beach.jpg",
            onChecked: onImageChecked,changeFunction: onImageChecked,count :count ),
            mycolumn(text: "Bike Trails", path: "assets/images/biking.jpg",
            onChecked: onImageChecked,changeFunction: onImageChecked,count :count ),
            mycolumn(text: "Bowling Alleys & Arcades", path: "assets/images/bowling.jpg",
            onChecked: onImageChecked,changeFunction: onImageChecked,count :count ),
            mycolumn(text: "Camping Grounds", path: "assets/images/camping.jpg",
            onChecked: onImageChecked,changeFunction: onImageChecked,count :count ),
            mycolumn(text: "Sunset Spectacles", path: "assets/images/sunset.jpg",
            onChecked: onImageChecked,changeFunction: onImageChecked,count :count ),
            mycolumn(text: "Sahra", path: "assets/images/sahra.jpg",
            onChecked: onImageChecked,changeFunction: onImageChecked,count :count ),
            mycolumn(text: "Amusement Parks", path: "assets/images/park.jpg",
            onChecked: onImageChecked,changeFunction: onImageChecked,count :count ),
          ],
        ),
        SizedBox(width: MediaQuery.of(context).size.width * 0.06,),
        
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
            mycolumn(text: "Historical Sites", path: "assets/images/casba.jpg",
            onChecked: onImageChecked,changeFunction: onImageChecked,count :count ),
            mycolumn(text: "Chess Clubs", path: "assets/images/chess.jpg",
            onChecked: onImageChecked,changeFunction: onImageChecked,count :count ),
            mycolumn(text: "Drawing ", path: "assets/images/drawing.jpg",
            onChecked: onImageChecked,changeFunction: onImageChecked,count :count )
          ,mycolumn(text: "Riding Stables", path: "assets/images/horse.jpg",
          onChecked: onImageChecked,changeFunction: onImageChecked,count :count ),
            mycolumn(text: "Dinning Spots", path: "assets/images/resto.jpg",
            onChecked: onImageChecked,changeFunction: onImageChecked,count :count ),
            mycolumn(text: "Hotels", path: "assets/images/hotel.jpg",
            onChecked: onImageChecked,changeFunction: onImageChecked,count :count ),
            mycolumn(text: "Pottery Workshops", path: "assets/images/potery.jpg",
            onChecked: onImageChecked,changeFunction: onImageChecked,count :count ),
            mycolumn(text: "Museums", path: "assets/images/musee.jpg",
            onChecked: onImageChecked,changeFunction: onImageChecked,count :count ),
            
          ],
        )
            ],
        );
  }
}

class mycolumn extends StatefulWidget {
  final String text;
  final String path;
  final Function(bool) onChecked;
   final Function(bool) changeFunction;
   final int count;
  const mycolumn({
    Key ? key,
    required this.text,
    required this.path,
    required this.onChecked,
    required this.changeFunction,
    required this.count

  }):
  super(key:key);

  @override
  State<mycolumn> createState() => _mycolumnState();
  
}

class _mycolumnState extends State<mycolumn> {
  bool _isChecked=false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
        Padding(padding: const EdgeInsets.only(
          left: 10.0 , right: 10.0 ,top: 10.0
        ),
      
          child: GestureDetector(
            onTap: () {
            if (!_isChecked && widget.count < 5) {
                setState(() {
                  _isChecked = true;
                });
                widget.changeFunction(true);
              } else if (_isChecked) {
                setState(() {
                  _isChecked = false;
                });
                widget.changeFunction(false);
              }
            },
            child: Stack(
              alignment: Alignment.center,
              children: [ ColorFiltered(
                colorFilter: _isChecked
            ? ColorFilter.mode(
                Colors.black.withOpacity(0.3), BlendMode.srcATop)
            : ColorFilter.mode(
                Colors.transparent, BlendMode.srcATop),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.2,
                   
                      child: Image.asset(widget.path,
                  
                      fit: BoxFit.cover,),
                    ),
                ),
              ),
      if (_isChecked)
                Align(
                  alignment: Alignment.center,
                  child: Icon(
                    FontAwesomeIcons.check,
                    color: Colors.white,
                    size: 40,
                    ),
                )
      ]),
          
          ),
          
        ),

       Padding(padding: EdgeInsets.only(top: 5),
         child: Text(widget.text,
               style: TextStyle(
          fontSize:13,
          color:Colors.black,
          fontWeight: FontWeight.bold
               )
               ,),
       ),
    
      ]
    );
  }
}
