import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:task_4/label/store_details.dart';
import 'package:task_4/label/store_screen.dart';
import 'package:task_4/view/compants/store_screen_widget.dart';
import 'package:task_4/view/compants/store_widget2.dart';
import 'package:task_4/view/screen/account_update.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff28333),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.arrow_back),
        title: Text('Store',
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
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.blueAccent,
        height: 50,
        color: Colors.black,
        buttonBackgroundColor: Colors.purple,
        index: 2,
        items: <Widget>[
          Icon(Icons.home_filled, size: 30, color: Colors.grey),
          Icon(
            Icons.add,
            size: 30,
            color: Colors.grey,
          ),
          Icon(Icons.store, size: 30, color: Colors.grey),
          InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => AccountUpdate(),));
              },
              child: Icon(Icons.account_circle, size: 30, color: Colors.grey)),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: SizedBox(
                height: 75,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) =>
                        StoreScreenWidget(storeDetails: Store[index]),
                    separatorBuilder: (context, index) => SizedBox(width: 5),
                    itemCount: Store.length),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 120,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>
                      StoreWidget2(storeScreen: Store2[index]),
                  separatorBuilder: (context, index) => SizedBox(width: 5),
                  itemCount: Store2.length),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.white70),
                  ),
                  child: Center(child: Image.asset('assets/images/puma.png')),
                ),
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.white70),
                  ),
                  child:
                      Center(child: Image.asset('assets/images/reeback.png')),
                ),
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.white70),
                  ),
                  child: Center(child: Image.asset('assets/images/nike.png')),
                ),
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.white70),
                  ),
                  child: Center(child: Image.asset('assets/images/adidas.png')),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.white70),
                  ),
                  child: Center(
                      child: Image.asset('assets/images/underarmour.png')),
                ),
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.white70),
                  ),
                  child: Center(
                      child: Text(
                    'Asics',
                    style: TextStyle(color: Colors.grey),
                  )),
                ),
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.white70),
                  ),
                  child: Center(
                      child: Text(
                    'Reebok',
                    style: TextStyle(color: Colors.grey),
                  )),
                ),
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.white70),
                  ),
                  child: Center(
                      child:
                          Text('SeeAll', style: TextStyle(color: Colors.grey))),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      height: 174,
                      width: 163,
                      decoration: BoxDecoration(
                          color: Colors.grey[900],
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.white70)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Stack(
                                children: [
                                  Align(
                                      child: Image.asset(
                                          'assets/images/nikeshose.png')),
                                  PositionedDirectional(
                                      top: 7,
                                      end: 2,
                                      child: Text(
                                        '\$1500',
                                        style: TextStyle(color: Colors.black),
                                      ))
                                ],
                              ),
                            ),
                            Text(
                              'NIKE',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              'Air Forse 1 Low `07',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 174,
                      width: 163,
                      decoration: BoxDecoration(
                          color: Colors.grey[900],
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.white70)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Stack(
                                children: [
                                  Align(
                                      child: Image.asset(
                                          'assets/images/nike2.png')),
                                  PositionedDirectional(
                                      top: 7,
                                      end: 2,
                                      child: Text(
                                        '\$1200',
                                        style: TextStyle(color: Colors.black),
                                      ))
                                ],
                              ),
                            ),
                            Text(
                              'NIKE',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              'Air Lunaroll 1',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
