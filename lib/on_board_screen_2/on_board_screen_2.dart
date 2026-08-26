import 'package:flutter/material.dart';


class OnBoardScreen2 extends StatelessWidget {
  const OnBoardScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network('https://thumbs.dreamstime.com/b/airplane-landing-sunset-generative-ai-286951727.jpg',
            fit: BoxFit.cover,
            height: 300,
             width:double.infinity,),
            SizedBox(height: 15,),
            Text('Get Tickets Easily At \n  Your Convenience',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),),

            SizedBox(height: 15,),
            Text('Know availibility immediatly on call or \n                           emails',),

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
