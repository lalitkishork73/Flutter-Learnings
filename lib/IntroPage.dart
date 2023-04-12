import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/main.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("intro"),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Text("Welcome",style: TextStyle(fontSize:34,fontWeight: FontWeight.bold),),
          SizedBox(
            height: 21 ,
            child:
            ElevatedButton(onPressed: (){
               Navigator.push(context,MaterialPageRoute(builder:
               (context){
                 return const HomeScreen();
               }));
            },child: const Text('Next'),),)
        ],),
      ),
    );
  }
}