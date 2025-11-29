import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _controller1= TextEditingController();
  TextEditingController _controller2= TextEditingController();
  late String controller3;
  void _print(){
    setState(() {
      _controller2.text=_controller1.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30,),
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

                _print();
              },
              child: Text('Submit',style: TextStyle(color: Colors.white),),
          ),

        ],
      ),

    );

  }
}