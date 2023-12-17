import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_4/label/details.dart';

class HistoryScreenWidget extends StatelessWidget {
  const HistoryScreenWidget({super.key, required this.details});
    final Details details ;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      width: 343,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey),
        color: Colors.transparent,
      ),
      child: Row(
        children: [
          SizedBox(width:6 ,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15,),
              Text(details.date??'',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.deepPurple,),),
              SizedBox(height:5 ,),
              Text(details.distance??'',style: TextStyle(color: Colors.white)),
            ],
          ),
          Spacer(),
          Column(
            children: [
              SizedBox(height: 25,),
              Text('${details.steps??''}    ',style: TextStyle(color: Colors.white),),
            ],
          )
        ],
      ),
    );
  }
}
