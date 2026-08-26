
import 'package:flutter/material.dart';

class OnBoardScreen1 extends StatelessWidget {
  const OnBoardScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
     child:Column(
        children: [
          Image.network('https://static.vecteezy.com/system/resources/previews/008/312/536/large_2x/new-york-city-manhattan-skyline-aerial-view-at-dusk-photo.jpg',
          height: 300,
          width: double.infinity,
          fit: BoxFit.cover,),

          SizedBox(height: 15,),
          Text("Explore The Unexplored \n             Places",
            style: TextStyle(
            fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          SizedBox(height: 15,),
          Text("Explore the whole world with just a single \n                              click"),
          SizedBox(height: 25,),
          SizedBox(height: 50,
          width: 200,
          child: ElevatedButton(
              onPressed: (){}, 
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white24),
            child: Text('Next'),
              ),),
        ],
      ),

    ),
    );
  }
}
