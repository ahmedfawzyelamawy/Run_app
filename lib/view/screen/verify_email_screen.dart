import 'package:flutter/material.dart';
import 'package:task_4/view/screen/address_screen.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff28333),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.arrow_back),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Image.asset('assets/images/Group.png'),
          SizedBox(
            height: 30,
          ),
          Text(
            'verify your email',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Enter the email associated withyour account',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            'we all send email with password to verity',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              SizedBox(
                width: 70,
              ),
              Container(
                height: 46,
                width: 46,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey),
                ),
                child: Center(
                  child: Text('3',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 40)),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 46,
                width: 46,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 46,
                width: 46,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 46,
                width: 46,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey),
                ),
              )
            ],
          ),
          SizedBox(
            height: 110,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'Verify Email',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple[400],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                fixedSize: Size(325, 56)),
          ),
          SizedBox(height: 10,),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => AddressScreen(),));
            },
            child: Text(
              'Open mail app',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[700],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                fixedSize: Size(325, 56)),
          ),
        ],
      ),
    );
  }
}
