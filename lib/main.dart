import 'package:flutter/material.dart';

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
var WtInput=TextEditingController();
var FtInput=TextEditingController();
var InInput=TextEditingController();

var Result='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI'),
      ),
      body:Column(
        children: [
          Text("BMI",style: TextStyle(fontSize: 35,
              fontWeight: FontWeight.w700),),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: TextField(controller: WtInput,
            decoration: InputDecoration(
                label: Text('Enter Your Weight'),
                prefixIcon: Icon(Icons.line_weight)
            ),
            keyboardType: TextInputType.number,
            ),
          ),Padding(
            padding: const EdgeInsets.all(25.0),
            child: TextField(controller: FtInput,
            decoration: InputDecoration(
                label: Text('Enter Your Height'),
                prefixIcon: Icon(Icons.height)
            ),
            keyboardType: TextInputType.number,
            ),
          ),Padding(
            padding: const EdgeInsets.all(25.0),
            child: TextField(controller: InInput,
            decoration: InputDecoration(
                label: Text('Enter Your Height in (Inch)'),
                prefixIcon: Icon(Icons.height )
            ),
            keyboardType: TextInputType.number,
            ),
          ),
          ElevatedButton(onPressed: (){
            var wt=WtInput.text.toString();
            var ft=FtInput.text.toString();
            var In=InInput.text.toString();

            if(wt!="" && ft!="" && In!=""){
                var Iwt=int.parse(wt);
                var Ift=int.parse(ft);
                var Iin=int.parse(In);

                var tInch=(Ift*12)+Iin;
                var tCm=tInch*2.54;
                var tM=tCm/100;

                var bmi=Iwt/(tM*tM);
                setState(() {
                  Result=bmi.toString().substring(0,5);
                });

            }else{
              setState(() {
                Result="Please Fill all Required Line";
              });

            }

          }, child: Text('Calculate')),
          Text('  $Result',style: TextStyle(fontSize: 15,),),
        ],
      )

    );
  }
}


