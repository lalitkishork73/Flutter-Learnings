import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewImage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          title:const Text('Detail'),

        ) ,
      body:Container(
        child: Hero(
          tag: 'background',
          child: Image.asset('assets/images/Icon-512.png'),
        ),
      )
      
    );
  }

}