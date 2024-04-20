import 'package:flutter/material.dart';
import 'package:flutter_application_4/navigation_bar.dart';
import 'package:flutter_application_4/viewss/didview.dart';
import 'package:flutter_application_4/viewss/feedview.dart';
import 'package:flutter_application_4/viewss/reelview.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}
final List<Widget>tabs=const[
 
 
 
  Tab(icon: Icon( 
              Icons.image,
              color: Colors.black87,
            
            )),
           
           
           
            Tab(
              icon:Icon(Icons.video_collection_outlined,
              color: Colors.black87,)
              ,
              
            ),
           
           
           
           
            Tab(icon:Icon(Icons.train,
            color: Colors.black87
             ,) ,)
];









List<Widget>TabBarViews=const[
  feedview(),
  reelview(),
  didview(),
 
];






class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(),
      body: ListView(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 5,),
              following(),
               picture(),
               followers(),
            ],
          ),

         
 

 
 
 
          info(),
          SizedBox(height: 10,),
          
          edit(),

          TabBar(tabs: tabs),
          SizedBox(
            height: 1000,
            child: TabBarView(children: TabBarViews)),
        ],
      ),
       bottomNavigationBar: nav_bar(),
      ),

    );
  }
}

class following extends StatelessWidget {
  const following({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("345",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
        SizedBox(width: 2,),
        Text("Following",
       style: TextStyle(color: Colors.black87),),
    
    
      ],
    );
  }
}

class picture extends StatelessWidget {
  const picture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Container(
      child: Image(image: AssetImage('images/profilep.jpg'),alignment: Alignment.center,),
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color.fromARGB(255, 199, 197, 197),
      ),
    ),
    
    );
  }
}

class followers extends StatelessWidget {
  const followers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text("21.5K",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                 SizedBox(width: 2,),
                 Text("Followers",
                style: TextStyle(color: Colors.black87),),
    
    
               ],
             );
  }
}

class edit extends StatelessWidget {
  const edit({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(height: 50,
        width: 100,
        child: Center(child: Text("Edit profile",style: TextStyle(fontWeight: FontWeight.w800),)),
        decoration: BoxDecoration(color: const Color.fromARGB(255, 209, 206, 206),borderRadius:BorderRadius.circular(8)),
        
        ),
        SizedBox(width: 17,),
        
        Container(height: 50,
        width: 100,
        child: Center(child: Text("Share profile",style: TextStyle(fontWeight: FontWeight.w800,color: Colors.white),)),
        decoration: BoxDecoration(color: Color.fromARGB(255, 7, 7, 7),borderRadius:BorderRadius.circular(8)),
        
        ),
        
      ],
    );
  }
}

class info extends StatelessWidget {
  const info({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        
        Text("ali abdelaziz",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
        Text("i like to travel around the world",
        style: TextStyle(color: Colors.grey),
        
        ),
        Text("youtube.com/alitravel",
        style: TextStyle(color: Colors.blue),)
      ],
    );
  }
}