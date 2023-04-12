import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget{
  var OutData;
  ProfilePage(this.OutData);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Container(
        color: Colors.green,
        child: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Welcome $OutData',style: TextStyle(fontSize: 22,color:Colors.white70  ),),
              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              },
                child: Text('Back'),),
            ],
          )
        ),
      ),
    );
  }

}