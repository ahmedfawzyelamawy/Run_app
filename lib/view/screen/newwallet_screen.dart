import 'package:flutter/material.dart';

class NewwalletScreen extends StatelessWidget {
  const NewwalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff28333),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.arrow_back),
        title: Text('New Wallet',
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
            SizedBox(height: 120,),
            Text(
              'Select the',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            Text(
              'withdrawal type',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            SizedBox(height: 30,),
            Container(
              height: 128,
              width: 343,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                border: Border.all(color: Colors.white),
                color: Colors.grey[900],
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                      radius: 30,
                      child: Image.asset(
                        'assets/images/bank.png',
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 25,),
                      Text(
                        'Bank Account',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Text(
                        'Unfortunately we don`t know',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'where to send your money',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(width: 40,),
                  Icon(Icons.navigate_next_outlined,size: 40,color: Colors.white,)
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 128,
              width: 343,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                border: Border.all(color: Colors.white),
                color: Colors.grey[900],
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.pink,
                      child: Image.asset(
                        'assets/images/card.png',
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 25,),
                      Text(
                        'Card',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Text(
                        'Unfortunately we don`t know',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'where to send your money',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(width: 40,),
                  Icon(Icons.navigate_next_outlined,size: 40,color: Colors.white,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
