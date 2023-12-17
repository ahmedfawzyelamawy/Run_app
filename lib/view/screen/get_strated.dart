import 'package:flutter/material.dart';
import 'package:task_4/view/screen/homescreen.dart';
import 'package:task_4/view/screen/next_screen.dart';

class GetStrated extends StatelessWidget {
  const GetStrated({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff28333),
      body: SizedBox(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/get_start.png'),
                fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              SizedBox(height: 470),
              Center(
                  child: Text('Running App',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 40))),
              SizedBox(height: 10),
              Text(
                'Run and earn with our app. some',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20),
              ),
              Text(
                'text example will be here',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => NextScreen(),));
                },
                child: Text(
                  'Get Started',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 30),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff7B61FF),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17)),
                    fixedSize: Size(300, 56)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
