import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_4/label/store_details.dart';

class StoreScreenWidget extends StatelessWidget {
  const StoreScreenWidget({super.key, required this.storeDetails});
     final StoreDetails storeDetails ;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(storeDetails.image??''),
          radius: 25,
        ),
        Text(
          storeDetails.name??'',
          style: TextStyle(color: Colors.white),
        ),
       ],
    );
  }
}
