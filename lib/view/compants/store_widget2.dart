import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_4/label/store_screen.dart';

class StoreWidget2 extends StatelessWidget {
  const StoreWidget2({super.key , required this.storeScreen});
    final StoreScreen storeScreen;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Container(
          height: 125,
          width: 291,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.grey),
            color: storeScreen.color
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15,),
                    Text(
                      'Today`s Speical',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      'Get 2x point for every steps,',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'only valid for today',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              Image.asset('assets/images/imagestore.png')
            ],
          ),
        ),
      ],
    );
  }
}
