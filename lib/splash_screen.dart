import 'dart:async';

import 'package:PetPals/main.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

@override
 _SplashScreenState createState() => _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen> {
 @override
  void initState() {
    super.initState();
      Timer(Duration(seconds: 5), ()=> Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage())));
  }

 @override
 Widget build(BuildContext context) {
  return Scaffold(
    body: Container(
      width: double.infinity,
      height: double.infinity,
      // ignore: prefer_const_constructors
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomRight,
          colors: [
            Colors.orange.withOpacity(0.3),
            Colors.yellow.withOpacity(0.5),
          ],
        ),
      ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset('assets/petpals-logo.png',
              height: 200.0, 
              width: 200.0,
              ),
              CircularProgressIndicator(
                strokeWidth: 5,
              )
            ],),
          ),

  );
 }
}