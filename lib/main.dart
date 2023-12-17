import 'package:flutter/material.dart';
import 'package:task_4/view/screen/account_update.dart';
import 'package:task_4/view/screen/address_screen.dart';
import 'package:task_4/view/screen/history_screen.dart';
import 'package:task_4/view/screen/homescreen.dart';
import 'package:task_4/view/screen/login_screen.dart';
import 'package:task_4/view/screen/newwallet_screen.dart';
import 'package:task_4/view/screen/next_screen.dart';
import 'package:task_4/view/screen/store_screen.dart';
import 'package:task_4/view/screen/verify_email_screen.dart';
import 'view/screen/get_strated.dart';

void main(){
  runApp(
   MaterialApp(
     debugShowCheckedModeBanner: false,
     home:GetStrated() ,
   )
  );
}