import 'package:flutter/material.dart';

class OnBoardScreen3 extends StatelessWidget {
  const OnBoardScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
              children: [
              Image.network('https://images.ctfassets.net/2d5q1td6cyxq/39ByXbSh0LSiOTZCwK22Ei/b98493445e2ec45245cf75c09c330399/PD06913_-_USEN_handheld.png',
            fit: BoxFit.cover,
            height: 300,
            width: double.infinity,),
            SizedBox(height: 20,),
            Text('Avail New Offers \n    Everytime',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 25,),
            Text('Specify your date and ticket, we ll get you \n              at the best value '),

            SizedBox(height: 25,),
            SizedBox(height: 50,
              width: 200,
              child: ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white24),
                child: Text('Get Started'),
              ),),
          ],
        ),
      ),
    );
  }
}
