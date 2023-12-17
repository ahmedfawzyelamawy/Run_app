import 'package:flutter/material.dart';
import 'package:task_4/view/compants/history_screen_widget.dart';
import 'package:task_4/label/details.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff28333),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.arrow_back),
        title: Text('History',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
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
      body: Center(
        child: Column(
          children: [
            Container(
              height: 96,
              width: 343,
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.white70),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Image.asset('assets/images/timer.png'),
                      Text('18,3 H',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20)),
                      Text(
                        'Time',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                  VerticalDivider(
                    thickness: 2,
                    color: Colors.purple,
                    indent: 2,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Image.asset('assets/images/routing.png'),
                      Text('48,7 KM',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20)),
                      Text(
                        'Distance',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                  VerticalDivider(
                    thickness: 2,
                    color: Colors.purple,
                    indent: 2,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Image.asset('assets/images/heart-circle.png'),
                      Text('123 PBM',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20)),
                      Text(
                        'Heart Beat',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Expanded(
              child: SizedBox(
                 height: double.maxFinite,
                child: Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: ListView.separated(
                      itemBuilder: (context, index) =>
                           HistoryScreenWidget(details: DetailsUsers[index]),
                      separatorBuilder: (context, index) => SizedBox(height: 5),
                      itemCount: DetailsUsers.length),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
