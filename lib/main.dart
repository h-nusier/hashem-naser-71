import 'package:flutter/material.dart';

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

      home:Textfild(),
    );
  }
}

class Textfild extends StatefulWidget {
  Textfild({super.key});

  @override
  State<Textfild> createState() => _TextfildState();
}

class _TextfildState extends State<Textfild> {
  TextEditingController _controller1= TextEditingController();
  TextEditingController _controller2= TextEditingController();
  late String controller3;
  void _login(){
    setState(() {
      _controller2.text=_controller1.text;
    });
  }
  void _Navgitor(){

    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=>Towpage(
            name: _controller1.text

        )));
  }
  void _Navgitor1(){

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page'),
        backgroundColor: Colors.teal,

      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          TextField(
            decoration: InputDecoration(
                labelText: 'Enter the Name',
                hintText:'ahmed' ,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0)
                )
            ),
            controller: _controller1,
          ),
          SizedBox(height: 20,),
          TextField(
            decoration: InputDecoration(
                labelText: ' the Name',
                //  hintText:'ahmed' ,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0)
                )
            ),
            controller: _controller2,
            readOnly: true,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
              ),
              onPressed: (){

                _login();
              },

              child: Text('Submit',style: TextStyle(color: Colors.white),)),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
              ),
              onPressed: (){
                _Navgitor();
              },
              child: Text('Navgitor',style: TextStyle(color: Colors.white))),

        ],
      ),

    );

  }
}



class Towpage extends StatelessWidget {
  final String name;
  Towpage({super.key,
    required this.name
  });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Tow Page'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Text(name),
      ),
    );
  }
}
