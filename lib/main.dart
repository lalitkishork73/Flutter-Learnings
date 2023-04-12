import 'package:flutter/material.dart';
import 'package:my_app/IntroPage.dart';
import 'package:my_app/Profile_Page.dart';
import 'package:my_app/Widget/utils.dart';
import 'package:my_app/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "XoXo",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      // home:  IntroPage(),
      home:SplashScreen()
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
  var Count=0;
  var inputOne=TextEditingController();
  var inputTwo=TextEditingController();
  var Result='';

  var inputdata=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Line'),
      ),

     body: Center(
       child:Column(
         mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Text('Motivation',style: TextStyle(color: Colors.green,fontSize: 35),),
         Padding(
           padding: const EdgeInsets.all(22.0),
           child: TextField(controller:inputdata,style:TextStyle(fontWeight: FontWeight.w300)),
         ),
         ElevatedButton(onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context){
              return ProfilePage(inputdata.text.toString());
            }));
         }, child: Text('Send'))
       ]),
     )

     /* body: Center(child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Counter: $Count',style: TextStyle(fontSize: 36),),
            ElevatedButton(onPressed: (){
              setState(() {
                Count++;
              });
            }, child: Text('Increase'))
          ],
        )),*/

      /*body:Center(
        child: Padding(
          padding: const EdgeInsets.all(21.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            TextField(
              keyboardType: TextInputType.number,
              controller:inputOne ,),
            TextField(
              keyboardType: TextInputType.number,
              controller: inputTwo,),
            Padding(
              padding: const EdgeInsets.all(21.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                 ElevatedButton(onPressed: (){
                   var no1=int.parse(inputOne.text.toString());
                   var no2=int.parse(inputTwo.text.toString());
                   var sum=no1+no2;
                   setState(() {
                        Result='$sum';
                   });
                 }, child: Text('Add')),
                 ElevatedButton(onPressed: (){
                   var no1=int.parse(inputOne.text.toString());
                   var no2=int.parse(inputTwo.text.toString());
                   var diff=no1-no2;
                   setState(() {
                     Result='$diff';
                   });
                 }, child: Text('Sub')),
                 ElevatedButton(onPressed: (){
                   var no1=int.parse(inputOne.text.toString());
                   var no2=int.parse(inputTwo.text.toString());
                   var mul=no1*no2;
                   setState(() {
                     Result='$mul';
                   });
                 }, child:Text('Mul')),
                 ElevatedButton(onPressed: (){
                   var no1=int.parse(inputOne.text.toString());
                   var no2=int.parse(inputTwo.text.toString());
                   var div=no1/no2;
                   setState(() {
                     Result='$div';
                   });
                 }, child: Text('Div')),
              ],),
            ),
              Padding(padding: EdgeInsets.all(21),
              child:Text('Result $Result',style: TextStyle(fontSize: 25),))
          ],),
        ),)*/
    );
  }
}


/*
class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});
  
  callBack(){
    print('hi');
  }

  @override
  Widget build(BuildContext context) {
    var arrPeople = [
      "Mia",
      "Nagatoro",
      "Hinata",
      "Komi",
      "Kiri",
      "kia",
    ];

    var name=TextEditingController();
    var Password=TextEditingController();
    var time=DateTime.now();


    return Scaffold(
        appBar: AppBar(
          title: const Text('Lalit'),
        ),
        */
/*   body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.amber[50],
          child: Center(
              child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.deepOrange,
              // borderRadius:
              //     const BorderRadius.only(topLeft: Radius.circular(21)),
              border: Border.all(width: 2, color: Colors.deepPurple),
              boxShadow: const [
                BoxShadow(
                    blurRadius: 45, color: Colors.black54, spreadRadius: 5)
              ],
              shape: BoxShape.circle,
            ),
          )),
        ) */



/*  body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 50,
                height: 100,
                color: Colors.amber[500],
              ),
              Expanded(
                child: Container(
                  width: 50,
                  height: 100,
                  color: Colors.blue[500],
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  width: 50,
                  height: 100,
                  color: Colors.pink[500],
                ),
              ),
              Container(
                width: 50,
                height: 100,
                color: Colors.red[500],
              ),
              /* Expanded(
              child: Container(
                width: 50,
                height: 100,
                color: Colors.green[500],
              ),
            ) */

            ],
          ),
        ) */



/*   body: Padding(
            padding: const EdgeInsets.only(top: 11, left: 11),
            // padding: const EdgeInsets.all(0.9),
            child: Container(
              margin: EdgeInsets.only(top: 11),
              child: Text(
                'Mono',
                style: TextStyle(fontSize: 25, color: Colors.blue[500]),
              ),
            )) *//*


        */
/* body: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                leading: Text('${index + 1}'),
                title: Text(arrPeople[index]),
                subtitle: const Text('Number'),
                trailing: const Icon(Icons.add),
              );
            },
            separatorBuilder: (context, index) {
              return const Divider(
                height: 20,
                thickness: 1,
              );
            },
            itemCount: arrPeople.length) *//*


        */
/*  body: CircleAvatar(
          // backgroundImage: AssetImage('assets/images/Icon-512.png'),
          backgroundImage: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_L0CPXYzetCiWA3MqQ5R8l11IG2BL4q_cSWAZ46u7VA&s'),
          backgroundColor: Colors.green,
          radius: 30,
        ) *//*


        */
/*  body: const Card(
            elevation: 5,
            child: Padding(
              padding: EdgeInsets.all(0.8),
              child: Text('Lello ja', style: TextStyle(fontSize: 25)),
            )) *//*


       */
/* body: Center(
          child: Container(
            width: 300,
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller:name ,
                    decoration: InputDecoration(
                      hintText: 'Enter Email',
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21),
                          borderSide: BorderSide(color: Colors.deepPurple)
                      ),
                      enabledBorder: OutlineInputBorder( borderRadius: BorderRadius.circular(21),
                          borderSide: BorderSide(color: Colors.yellow)),
                    disabledBorder: OutlineInputBorder( borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(color: Colors.red)),
                    suffixText: "UserName",
                    prefixIcon: IconButton(icon: Icon(Icons.email,color: Colors.cyan),onPressed: (){
                print('maze aa gaye');
              },)
                    // suffixIcon: Icon(Icons.remove_red_eye ),
                     )
                ),Container(height: 20,),TextField(
                    obscureText: true,
                    obscuringCharacter: '*',
                    controller: Password,
                    decoration: InputDecoration(
                      hintText: 'Password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(21),
                            borderSide: BorderSide(color: Colors.deepOrange)
                        ),
                        prefixText: 'Password',
                        prefixIcon:IconButton(icon: Icon(Icons.password,color: Colors.cyan),onPressed: (){

                        },) ,
                        suffixIcon: IconButton(icon: Icon(Icons.remove_red_eye,color: Colors.cyan),onPressed: (){

                        },))),
                ElevatedButton(onPressed:(){
                  String inp=name.text.toString();
                  String pas=Password.text;
                  print({"email":inp,"Pass":pas});
                } ,child:Text('Submit')),

              ],
            ),
          ),
        )*//*



      */
/*body:GridView.count(crossAxisCount:2,

      children: [
        Padding(padding: const EdgeInsets.all(8.0),child: Container(width: 100,height: 100,color: Colors.cyan,) ,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(width: 100,height: 100,color: Colors.pink,),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(width: 100,height: 100,color: Colors.red,),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(width: 100,height: 100,color: Colors.yellow,),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(width: 100,height: 100,color: Colors.black,),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(width: 100,height: 100,color: Colors.green,),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(width: 100,height: 100,color: Colors.deepPurple,),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(width: 100,height: 100,color: Colors.deepOrange,),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(width: 100,height: 100,color: Colors.blue,),
        ),
      ],) *//*


    */
/*  body:ElevatedButton(child: Text('Submit'),onPressed:callBack)*//*


     */
/* body:Container(
        child:Column(

          children: [

            Expanded(flex:4,child: Container(height: 200,color: Colors.cyan,child:ListView.builder(itemBuilder: (context,index)=>Padding(padding:const EdgeInsets.all(11.0),child:SizedBox(width: 100,child:CircleAvatar(backgroundColor: Colors.purple))),itemCount: 10,scrollDirection: Axis.horizontal,))),
            Expanded(flex:4,child: Container(height: 200,color: Colors.yellow)),
            Expanded(flex:4,child: Container(height: 200,color: Colors.red)),
            Expanded(flex:4,child: Container(height: 200,color: Colors.purple)),
            Expanded(flex:4,child: Container(height: 200,color: Colors.blue)),
          ],
        )
      )*//*



   */
/*  body:Container(
       child: Column(
         children: [
           FirstBar(),
           Second(),
           Third()
         ],
       ),
     )
*//*

      */
/*body: Stack(
        children: [
          Container(width: 200, height: 200,color: Colors.orange,),
          Container(width: 150, height: 150,color: Colors.blueGrey,),
          Container(width: 100, height: 100,color: Colors.pink,),
        ],
      ),*//*



      // body: Center(child: ElevatedButton(onPressed: (){},child: Text('Push'),)),

      */
/*body:RoundedButton(buttonName: 'SubMut',icon: Icon(Icons.play_arrow),callback: (){
        print('GST');
      }
      ),*//*


     */
/* body:Wrap(children: [

        Container(width: 100,height: 100,color:Colors.amber),
        Container(width: 100,height: 100,color:Colors.black),
        Container(width: 100,height: 100,color:Colors.purple),
        Container(width: 100,height: 100,color:Colors.black),
        Container(width: 100,height: 100,color:Colors.purple),
        Container(width: 100,height: 100,color:Colors.orange),
      ],)*//*


      */
/* body: Row(children: [
         Text('Hello',style: TextStyle(fontSize: 16,color: Colors.purple),),
         Text('world!',style: TextStyle(fontSize: 34,color:Colors.blue,fontWeight: FontWeight.bold),)
       ],),*//*


      */
/*body:RichText(text: TextSpan(
        style: TextStyle(color:Colors.grey,fontSize: 21),
        children: <TextSpan>[
          TextSpan(text: 'hello'),
          TextSpan(text:'world!',style: TextStyle(
              fontSize: 34,
              color:Colors.blue,
              fontWeight: FontWeight.bold))
        ]
      ),)*//*



    );
  }
}
*/

/*
class FirstBar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
      return Expanded(flex:2,child: Container(color: Colors.red,child: ListView.builder(itemBuilder: (context,index)=>Padding(padding:const EdgeInsets.all(11.0),child:SizedBox(width: 70,child:CircleAvatar(backgroundColor: Colors.purple))),itemCount: 10,scrollDirection: Axis.horizontal,),));
  }
}
class Second extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Expanded(flex:4,child: Container(color: Colors.white24,child: ListView.builder(itemBuilder: (context,index)=>Padding(padding:const EdgeInsets.all(11.0),child:ListTile(leading: SizedBox(width: 50,child:CircleAvatar(backgroundColor: Colors.green)),title: Text('Name'),subtitle: Text('Mob No'),trailing: Icon(Icons.delete))),itemCount: 10,scrollDirection: Axis.vertical,),));
  }
}
class Third extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Expanded(flex:1,child: Container(color: Colors.orange,child: ListView.builder(itemBuilder: (context,index)=>Padding(padding:const EdgeInsets.all(11.0),child:SizedBox(width: 50,child:CircleAvatar(backgroundColor: Colors.yellow))),itemCount: 10,scrollDirection: Axis.horizontal,),));

  }
}

*/


















/* 
import 'dart:io';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const MyHomePage(title: 'JavaScript'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  var names = ['lalit', 'kishor', 'mahesh'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      /* body: Center(
        child: Container(
            width: 100,
            height: 100,
            color: Colors.yellow[400],
            child: const Center(
                child: Text(
              'Js',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.white),
            ))),
      ), */
      /*  body: Center(
          child: ElevatedButton(
              onPressed: () {
                print('lalit');
              },
              child: const Text('Submit')),
        ) */
      /* body: Center(
          child: SizedBox(
              width: 100,
              height: 100,
              child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaHZzRBFl6qP8XTl4OjSMtMfVCaiRs0R9cDd1bO00&s')),
        ) */
      /* body: Container(
        width: 400,
        height: 400,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                widget.title,
                style: TextStyle(color: Colors.amber[900], fontSize: 25),
              ),
              Text(widget.title),
              Text(widget.title),
              Text(widget.title),
            ]),
      ) */

      /*  body: Container(
          child: InkWell(
        onTap: () {
          print('singleTap');
        },
        onLongPress: () {
          print('LongPress');
        },
        onDoubleTap: () {
          print('Double tab');
        },
        child: Container(
          width: 100,
          height: 100,
          color: Colors.amber,
        ),
      )), */

      /* body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
                child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(children: [
                        Container(
                          margin: const EdgeInsets.only(right: 8),
                          height: 200,
                          width: 200,
                          color: Colors.pink[700],
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 11),
                          height: 200,
                          width: 200,
                          color: Colors.green[700],
                        ),
                        Container(
                            margin: const EdgeInsets.only(right: 11),
                            height: 200,
                            width: 200,
                            color: Colors.yellow[700]),
                        Container(
                          margin: const EdgeInsets.only(right: 11),
                          height: 200,
                          width: 200,
                          color: Colors.lightBlue[700],
                        ),
                      ])),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 11),
                  height: 200,
                  color: Colors.lightGreen[700],
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 11),
                  height: 200,
                  color: Colors.lightGreenAccent[700],
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 11),
                  height: 200,
                  color: Colors.blue[700],
                ),
              ],
            ))) */

      /* body: Center(
          child: Padding(
            padding: EdgeInsets.all(2),
            child: ListView(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 8),
                  height: 200,
                  width: 200,
                  color: Colors.pink[700],
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 11),
                  height: 200,
                  width: 200,
                  color: Colors.green[700],
                ),
                Container(
                    margin: const EdgeInsets.only(bottom: 11),
                    height: 200,
                    width: 200,
                    color: Colors.yellow[700]),
                Container(
                  margin: const EdgeInsets.only(bottom: 11),
                  height: 200,
                  width: 200,
                  color: Colors.lightBlue[700],
                ),
              ],
            ),
          ),
        ) */

      body: ListView.builder(
        itemBuilder: (context, index) {
          return Text(names[index],
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500));
        },
        itemCount: names.length,
        itemExtent: 200,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
 */