import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget{
  final String buttonName;
  final Icon? icon;
  final Color backGroundColor;
  final TextStyle? textStyle;
  final VoidCallback? callback;


  RoundedButton({required this.buttonName,
    this.icon,
    this.backGroundColor=Colors.blue,
    this.textStyle,
    this.callback});
  @override
  Widget build(BuildContext context){
    return Center(child:ElevatedButton  (onPressed: (){callback!(); },
      child: icon!=null?Row(children: [
        icon!,
        Text(buttonName,style: textStyle,)
      ],):Text(buttonName,style: textStyle,),
      style: ElevatedButton.styleFrom(
          primary: backGroundColor,shadowColor: backGroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(21),topLeft: Radius.circular(21),)
      )),
    ));
  }
}