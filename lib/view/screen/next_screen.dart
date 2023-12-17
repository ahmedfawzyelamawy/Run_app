import 'package:flutter/material.dart';
import 'package:task_4/view/screen/login_screen.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff28333),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: Text('skip',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20)),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 40,
          ),
          Center(
              child: Image.asset(
            'assets/images/Frame.png',
          )),
          SizedBox(height: 25),
          Container(
            width: 311,
            height: 303,
            decoration: BoxDecoration(
                color: Color(0xff2F3C50),
                borderRadius: BorderRadius.circular(64),
                border: Border.all(color: Color(0xff535E6E))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                Text('Run',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25)),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Learn ipsum is simply dummy text of the',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  ' printing and typesetting industry. learm',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  'ipsum has been the industry`s standard',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  'dummy text ever since the 1500s',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(width: 140),
                    CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 3,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 2,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 2,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 2,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
                  },
                  child: Row(
                    children: [
                      SizedBox(width: 40),
                      Text('Next',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      Icon(Icons.navigate_next),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff7B61FF),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      fixedSize: Size(150, 56)),
                )
              ],
            ),
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width:90 ,),
              Text(
                'Already have an account?',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Sign in',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, color: Colors.deepPurple),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
