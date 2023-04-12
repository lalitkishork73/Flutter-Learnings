import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => SplashScrn();

}

class SplashScrn extends State<SplashScreen>{
  @override
  void initState(){
    super.initState();

    Timer(Duration(seconds: 4),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder:
      (context)=>HomeScreen() )) ;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(

            color: Colors.blue,
            child:const Center(child: Text('Vulture',
              style:TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w700,
                  color:Colors.white70
              ) ,),))
    );
  }
}