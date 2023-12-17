import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:task_4/label/store_details.dart';
import 'package:task_4/view/compants/history_screen_widget.dart';
import 'package:task_4/view/screen/store_screen.dart';
import 'package:task_4/view/screen/verify_email_screen.dart';

import '../../label/details.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.more_horiz, color: Colors.white),
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/pexel.jpeg'),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello!',
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
                Text(
                  'a77med',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )
              ],
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: Stack(
              children: [
                Align(
                  child: Icon(Icons.messenger),
                ),
                PositionedDirectional(
                    top: 9,
                    end: 0,
                    child: CircleAvatar(
                      radius: 3,
                      backgroundColor: Colors.red,
                    ))
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.blueAccent,
        height: 50,
        color: Colors.black,
        buttonBackgroundColor: Colors.purple,
        items: <Widget>[
          Icon(Icons.home_filled, size: 30, color: Colors.grey),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => VerifyEmailScreen(),));
            },
            child: Icon(
              Icons.add,
              size: 30,
              color: Colors.grey,
            ),
          ),
          InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => StoreScreen(),));
              },
              child: Icon(Icons.store, size: 30, color: Colors.grey)),
          Icon(Icons.account_circle, size: 30, color: Colors.grey),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '14.000 / 15.000 Steps',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'Level 5',
                    style: TextStyle(color: Colors.yellow, fontSize: 20),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: new LinearPercentIndicator(
                width: 330,
                lineHeight: 8.0,
                percent: 0.75,
                barRadius: Radius.circular(10),
                backgroundColor: Colors.grey,
                progressColor: Colors.blue,
              ),
            ),
            SizedBox(height: 10,),
            Container(
              width: 343,
              height: 90,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.white,
                  ),color: Colors.grey[900]),
              child:
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/images/imagepng.png'),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                    Text('26 may',style: TextStyle(color: Colors.grey),),
                    Text('Today',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),
                    Text('01:09:44',style: TextStyle(color: Colors.grey),)  
                    ],
                  ),
                  Spacer(),
                  new CircularPercentIndicator(
                    radius: 40.0,
                    lineWidth: 5.0,
                    percent: 0.25,
                    center: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Image.asset('assets/images/ic_steps.png'),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              new Text("2345",
                                  style: TextStyle(color: Colors.grey)),
                              SizedBox(
                                  width: 40,
                                  child: Divider(
                                    color: Colors.grey,
                                    thickness: 2,
                                  )),
                              Text(
                                '5000',
                                style: TextStyle(color: Colors.green),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    progressColor: Colors.green,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
         Padding(
           padding: const EdgeInsets.all(9.0),
           child: Row(
             children: [
               Container(
                 width:163 ,
                 height:125 ,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20),
                   border: Border.all(color: Colors.white),
                   color: Colors.grey[900]
                 ),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text('53,524',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40),),
                     Text('steps',style: TextStyle(color: Colors.grey),)
                   ],
                 ),
               ),
               Spacer(),
               Container(
                 width:163 ,
                 height:125 ,
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20),
                     border: Border.all(color: Colors.white),
                     color: Colors.grey[900]
                 ),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text('1000',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40),),
                     Text('Earned Points',style: TextStyle(color: Colors.grey),)
                   ],
                 ),
               )
             ],
           ),
         ),
            SizedBox(height: 10,),
            Image.asset('assets/images/Frame123.png'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'History',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 19),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(color: Colors.purpleAccent),
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) =>
                      HistoryScreenWidget(details: DetailsUsers[index]),
                  separatorBuilder: (context, index) => SizedBox(height: 5),
                  itemCount: DetailsUsers.length),
            ),
           ],
        ),
      ),
    );
  }
}
