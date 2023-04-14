import 'package:flutter/material.dart';
import 'package:my_app/newPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BMI App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home:  const HomeScreen(),

    );
  }
}

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyHomeState();
  }

}

class MyHomeState extends State<HomeScreen>{
  // ignore: non_constant_identifier_names

  bool isFirst=true;

  /*var myOpacity=1.0;
  bool flag=true;
*/
  /*var _width=200.0;
  var _height=100.0;
  // var color=Colors.yellow;
  bool flag=true;

  Decoration myDeco= BoxDecoration(
    borderRadius: BorderRadius.circular(2),
    color:Colors.yellow
  );*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation'),
      ),


      body:Container(
        width: 100,
      )


      /* body:Center(
         child:Container(
           decoration: BoxDecoration(
             gradient: LinearGradient(
               colors: [
                 Colors.purple.shade50,
                 Colors.white,
                 Color(0xffffecd2),
                 Color(0xfffcb69f)
               ],
               begin: FractionalOffset(0.0,1.0)
             )
           ),
         ),
       )*/

       /* body: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
              color:Colors.cyan.shade400,
              width: 100,
              height: 100,
            ),
          ),
        )*/

   /*  body:Center(
       child: Container(
         child: Center(
           child: InkWell(
             onTap:(){
                Navigator.push(context,MaterialPageRoute(builder:
                (context)=> NewImage()));
             },
             child: Hero(
               tag: 'background',
               child: Image.asset('assets/images/Icon-512.png',
               width:100,
               height: 50,),

             ),
           ),
         ),
       ),
     )*/

     /*body:Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           AnimatedCrossFade(
             duration: const Duration(seconds: 1),
             firstCurve: Curves.bounceIn,
             secondCurve: Curves.easeOutCirc ,
             firstChild: Container(
               width: 200,
               height: 200,
               color: Colors.cyan,
             ),
             secondChild: Image.asset('assets/images/Icon-512.png',
               width: 200,
               height: 200,), crossFadeState: isFirst?CrossFadeState.showFirst :CrossFadeState.showSecond,
           ),
           ElevatedButton(onPressed: (){
             setState(() {
               isFirst?isFirst=false:isFirst=true;
             });
           }, child: const Text('Animate'))
         ],
       ),
     ) ,
*/

     /* body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              AnimatedOpacity(
                  opacity: myOpacity,
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeInCubic,
                  child: Container(
                    width: 200,
                    height: 100,
                    color:Colors.green
                  ),),
            ElevatedButton(onPressed: (){

            setState(() {
              if(flag){
                myOpacity=0.0;
                flag=false;
              }else{
                myOpacity=1.0;
                flag=true;
              }
            });

            }, child: const Text('Animate'))
          ],
        ),
      )*/

      /*body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: AnimatedContainer(
                  height: _height,
                  width: _width,
                  curve: Curves.bounceOut,
                  decoration: myDeco,
                  duration:const Duration(seconds: 1 )),
            ),
            ElevatedButton(onPressed: (){
              setState(() {
                if(flag){
                  _width=100.0;
                  _height=200.0;
                  // color=Colors.green;
                  myDeco= BoxDecoration(
                      borderRadius: BorderRadius.circular(51),
                      color:Colors.cyan
                  );
                  flag=false;
                }else{
                  _height=100.0;
                  _width=200.0;
                  myDeco= BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color:Colors.red
                  );
                  // color=Colors.yellow;
                  flag=true;
                }


              });
            }, child:const Text('Animate'))
          ],
        ),
      )*/
    );
  }
}


