import 'package:flutter/material.dart';
import 'package:task_4/view/screen/history_screen.dart';

class AccountUpdate extends StatelessWidget {
  const AccountUpdate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Center(
              child: Padding(
            padding: const EdgeInsets.all(12),
            child: ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: AlertDialog(
                              backgroundColor: Color(0xff28333F),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24)),
                              // title:

                              content: Center(
                                  child: Column(
                                children: [
                                  Image.asset('assets/images/profile-tick.png'),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Text('Account Update',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 32)),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'Your account details have been successfully',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                  ),
                                  Text(
                                    'changed.',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                HistoryScreen(),
                                          ));
                                    },
                                    child: Text(
                                      'OK',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 30),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xff7B61FF),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                        fixedSize: Size(279, 56)),
                                  )
                                ],
                              )),
                            ),
                          ),
                        ],
                      );
                    });
              },
              child: Text(
                'Account update',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purpleAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  fixedSize: Size(326, 65)),
            ),
          ))
        ],
      ),
    );
  }
}
